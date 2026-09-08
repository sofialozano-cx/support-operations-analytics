# Findings & Recommendations

## Analysis Objective

The purpose of this portfolio analysis is not simply to calculate KPIs. It is to decide **where a Support Operations team should investigate and improve first**.

The dataset contains 60 fictional SaaS support tickets. Because the sample is intentionally small, findings should be treated as operational signals to investigate rather than statistically proven long-term trends.

---

## Finding 1 — Overall SLA is the primary health concern

Only **70.0%** of tickets meet the simulated first-response SLA.

At the same time, average CSAT among submitted surveys is **4.50/5**. Looking only at CSAT could therefore hide inconsistent response performance.

### Action

Track SLA and CSAT together. Segment SLA misses by category and priority before making staffing conclusions.

---

## Finding 2 — Bugs have the strongest friction pattern

Bug tickets show:

- 10 tickets;
- **15.9 h** average resolution time;
- **40%** SLA compliance;
- **50%** escalation rate;
- 4.29 average CSAT among responses.

No other category combines such weak SLA performance with such a high escalation rate.

### Action

Introduce a structured bug-triage checklist requiring reproduction steps, environment, timestamps, evidence, expected vs actual behavior and workaround status before Engineering escalation.

### Measure after change

- Bug SLA compliance
- Bug resolution time
- Escalation rate
- Engineering bounce-back / requests for missing information
- Reopen rate

---

## Finding 3 — API / Integration is strategically important

API / Integration represents **16 of 60 tickets (26.7%)**, making it the largest category in the dataset. Its escalation rate is approximately **31%**.

### Action

Review the most frequent API drivers and create reusable troubleshooting content for authentication, status codes, rate limits, webhooks and request evidence.

The goal should not be to prevent legitimate escalations. It should be to make Support capable of resolving repeatable issues independently and sending higher-quality escalations when Engineering is genuinely required.

---

## Finding 4 — Billing is high-volume but comparatively controlled

Billing has 13 tickets, yet:

- SLA compliance is approximately **92%**;
- average resolution is **9.3 h**;
- no ticket in this sample escalated.

### Action

Do not prioritize a queue solely because it has high volume. Preserve the working Billing process and look for transferable practices that may help other categories.

---

## Finding 5 — Reopen rate deserves investigation

The overall reopen rate is **16.7%**.

A reopened ticket does not automatically mean the original agent made a mistake. Possible drivers include incomplete resolution, customer follow-up, recurrence, unclear communication or a new symptom attached to an existing conversation.

### Action

Create a reopen-reason field before drawing conclusions. Suggested values:

```text
Issue not resolved
Issue recurred
Customer clarification
Incomplete instructions
New related issue
Administrative reopen
Other
```

This turns a raw reopen metric into an actionable quality signal.

---

## 30-Day Improvement Plan

### Week 1 — Diagnose

Review SLA breaches and escalations in Bug and API / Integration queues. Tag recurring drivers.

### Week 2 — Standardize

Create technical triage templates and minimum evidence requirements for common technical cases.

### Week 3 — Enable

Publish internal troubleshooting guides for the highest-frequency repeatable issues and calibrate escalation criteria with Engineering.

### Week 4 — Measure

Compare SLA, escalation and reopen indicators with the baseline. Review a sample of tickets qualitatively to make sure metric improvements correspond to better customer outcomes.

---

## Important Analytical Limits

- The dataset is synthetic.
- 60 tickets are useful for a portfolio exercise but not enough to establish long-term operational behavior.
- Data Import contains only two tickets and should not drive category-level decisions.
- CSAT is missing for some tickets, so the average reflects respondents rather than every customer.
- Correlation between metrics does not prove causation.
- Staffing, business hours, customer tier and agent-level variables are intentionally outside this version of the dataset.

These limits are part of the analysis: Support Operations decisions should communicate uncertainty rather than overstate what the data proves.
