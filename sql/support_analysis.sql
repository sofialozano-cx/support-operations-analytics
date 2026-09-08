-- Support Operations Analytics
-- Dataset: synthetic SaaS support tickets
-- SQL written for a conventional relational table named support_tickets.

-- 1. Executive KPIs
SELECT
    COUNT(*) AS total_tickets,
    ROUND(AVG(first_response_minutes), 1) AS avg_first_response_minutes,
    ROUND(AVG(resolution_hours), 1) AS avg_resolution_hours,
    ROUND(100.0 * AVG(sla_met), 1) AS sla_compliance_pct,
    ROUND(100.0 * AVG(escalated), 1) AS escalation_rate_pct,
    ROUND(100.0 * AVG(reopened), 1) AS reopen_rate_pct,
    ROUND(AVG(csat), 2) AS avg_csat
FROM support_tickets;

-- 2. Ticket volume by category
SELECT
    category,
    COUNT(*) AS tickets,
    ROUND(100.0 * COUNT(*) / (SELECT COUNT(*) FROM support_tickets), 1) AS share_pct
FROM support_tickets
GROUP BY category
ORDER BY tickets DESC;

-- 3. Category performance
SELECT
    category,
    COUNT(*) AS tickets,
    ROUND(AVG(first_response_minutes), 1) AS avg_first_response_min,
    ROUND(AVG(resolution_hours), 1) AS avg_resolution_hours,
    ROUND(100.0 * AVG(sla_met), 1) AS sla_pct,
    ROUND(100.0 * AVG(escalated), 1) AS escalation_pct,
    ROUND(100.0 * AVG(reopened), 1) AS reopen_pct,
    ROUND(AVG(csat), 2) AS avg_csat
FROM support_tickets
GROUP BY category
ORDER BY avg_resolution_hours DESC;

-- 4. SLA by priority
SELECT
    priority,
    COUNT(*) AS tickets,
    ROUND(AVG(first_response_minutes), 1) AS avg_first_response_min,
    ROUND(100.0 * AVG(sla_met), 1) AS sla_pct
FROM support_tickets
GROUP BY priority
ORDER BY CASE priority
    WHEN 'Urgent' THEN 1
    WHEN 'High' THEN 2
    WHEN 'Normal' THEN 3
    WHEN 'Low' THEN 4
END;

-- 5. Performance by support channel
SELECT
    channel,
    COUNT(*) AS tickets,
    ROUND(AVG(first_response_minutes), 1) AS avg_first_response_min,
    ROUND(AVG(resolution_hours), 1) AS avg_resolution_hours,
    ROUND(100.0 * AVG(sla_met), 1) AS sla_pct,
    ROUND(AVG(csat), 2) AS avg_csat
FROM support_tickets
GROUP BY channel
ORDER BY tickets DESC;

-- 6. Escalation concentration
SELECT
    category,
    COUNT(*) AS total_tickets,
    SUM(escalated) AS escalated_tickets,
    ROUND(100.0 * AVG(escalated), 1) AS escalation_pct
FROM support_tickets
GROUP BY category
HAVING SUM(escalated) > 0
ORDER BY escalation_pct DESC;

-- 7. Reopened tickets: possible quality / resolution signal
SELECT
    category,
    COUNT(*) AS total_tickets,
    SUM(reopened) AS reopened_tickets,
    ROUND(100.0 * AVG(reopened), 1) AS reopen_pct
FROM support_tickets
GROUP BY category
ORDER BY reopen_pct DESC;

-- 8. SLA breaches for investigation
SELECT
    ticket_id,
    created_at,
    category,
    channel,
    priority,
    first_response_minutes,
    resolution_hours,
    escalated,
    reopened,
    csat
FROM support_tickets
WHERE sla_met = 0
ORDER BY first_response_minutes DESC;

-- 9. High-friction tickets
-- Operational heuristic for this portfolio analysis, not a universal industry definition.
SELECT
    ticket_id,
    category,
    priority,
    resolution_hours,
    sla_met,
    escalated,
    reopened,
    csat
FROM support_tickets
WHERE sla_met = 0
   OR escalated = 1
   OR reopened = 1
   OR resolution_hours >= 20
ORDER BY resolution_hours DESC;

-- 10. CSAT response coverage
SELECT
    COUNT(*) AS total_tickets,
    COUNT(csat) AS csat_responses,
    ROUND(100.0 * COUNT(csat) / COUNT(*), 1) AS response_rate_pct,
    ROUND(AVG(csat), 2) AS avg_csat
FROM support_tickets;
