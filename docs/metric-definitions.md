# Support Metric Definitions

## First Response Time (FRT)

Time between ticket creation and the first meaningful Support response.

In this simulated dataset it is stored in minutes as `first_response_minutes`.

**Why it matters:** It indicates how quickly customers receive initial human support, but speed alone does not measure resolution quality.

---

## Resolution Time

Elapsed time from ticket creation until resolution, represented here in hours.

**Why it matters:** Long resolution times can indicate complex cases, dependencies, unclear ownership, insufficient tooling or escalation delays.

---

## SLA Compliance

Whether the first response met the target defined for the ticket priority.

Simulation targets:

| Priority | Target |
|---|---:|
| Urgent | 15 min |
| High | 30 min |
| Normal | 60 min |
| Low | 120 min |

Formula:

```text
SLA Compliance % = Tickets meeting SLA / Total tickets × 100
```

---

## CSAT — Customer Satisfaction

A post-support satisfaction score on a 1–5 scale in this project.

```text
Average CSAT = Sum of submitted CSAT scores / Number of submitted surveys
```

Blank responses are excluded rather than treated as zero.

**Caution:** Respondents may differ systematically from non-respondents, so CSAT should be interpreted alongside survey response coverage and other operational metrics.

---

## Escalation Rate

Percentage of tickets requiring escalation beyond the initial Support handling level.

```text
Escalation Rate = Escalated tickets / Total tickets × 100
```

A high escalation rate is not automatically bad. Complex technical queues may legitimately require Engineering. The useful question is whether escalations are **necessary, well-prepared and actionable**.

---

## Reopen Rate

Percentage of resolved tickets that are reopened.

```text
Reopen Rate = Reopened tickets / Total tickets × 100
```

A reopen can indicate incomplete resolution or recurrence, but the reason should be captured before treating it as a quality failure.

---

## Ticket Volume

Number of tickets received in a defined period or segment.

Volume is essential for capacity planning, but high volume does not necessarily identify the most difficult or highest-impact queue. This project therefore combines volume with resolution, SLA, escalation, reopen and CSAT indicators.
