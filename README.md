<div align="center">

# Support Operations Analytics

### React · TypeScript · SQL · Support KPIs · Operational Insights

![Status](https://img.shields.io/badge/Status-Live-6D28D9?style=flat-square)
![React](https://img.shields.io/badge/Frontend-React-4F46E5?style=flat-square)
![TypeScript](https://img.shields.io/badge/Language-TypeScript-7C3AED?style=flat-square)
![SQL](https://img.shields.io/badge/Analysis-SQL-8B5CF6?style=flat-square)

**[→ Open Live Dashboard](https://support-operations-analytics.vercel.app/)**

</div>

---

## Overview

A **React + TypeScript support-operations application** built around a synthetic SaaS ticket dataset. The project combines frontend engineering, typed analytics logic and SQL analysis to translate support metrics into operational decisions.

The application calculates and segments **First Response Time, Resolution Time, SLA Compliance, CSAT, escalation, reopen rate, ticket category, channel and priority**. Filters update the dashboard in real time, while the operational-signal logic distinguishes healthy performance from queues that should be monitored or investigated.

> All ticket data is synthetic and created exclusively for portfolio use. No real customer or employer data is included.

**[Launch Interactive Dashboard →](https://support-operations-analytics.vercel.app/)** · **[View Source →](https://github.com/sofialozano-cx/support-operations-analytics)**

---

## Technical Architecture

```text
CSV support dataset
       ↓
TypeScript parser + typed Ticket model
       ↓
Analytics functions
       ↓
React state + derived filtered dataset
       ↓
Reusable dashboard components
       ↓
Responsive UI
       ↓
Vite production build → Vercel
```

### Frontend

`React` · `TypeScript` · `Vite` · `CSS`

### Data & Analysis

`SQL` · `CSV` · `Support KPI Analysis` · `Segmentation` · `Operational Diagnosis`

### React structure

- `App.tsx` — application state, data loading, filtering and dashboard composition.
- `components/Dashboard.tsx` — reusable filter, KPI, chart and table components.
- `lib/analytics.ts` — parsing, aggregation, KPI calculations and operational-signal logic.
- `types/support.ts` — typed support-ticket, filter and metric models.
- `styles.css` — responsive visual system and dashboard presentation.

---

## Dashboard Capabilities

- Filter tickets dynamically by **category, channel and priority**.
- Calculate **ticket volume, SLA compliance, First Response Time, Resolution Time and CSAT** from the selected dataset.
- Compare ticket volume and SLA performance by category.
- Review operational health across volume, SLA, escalation and resolution time.
- Generate context-aware signals: **within expected range**, **should be monitored**, or **needs attention**.
- Read the CSV dataset directly rather than duplicating analytics data in application code.
- Responsive desktop and mobile interface.

---

## Executive Summary

| KPI | Result |
|---|---:|
| Tickets analyzed | **60** |
| Avg. First Response Time | **36.3 min** |
| Avg. Resolution Time | **11.9 h** |
| SLA Compliance | **70.0%** |
| Escalation Rate | **18.3%** |
| Reopen Rate | **16.7%** |
| Avg. CSAT* | **4.50 / 5** |

\*CSAT uses tickets where a survey response exists.

### Main finding

Strong overall CSAT hides a reliability issue. Only **70% of tickets meet first-response SLA**. Bug tickets have **40% SLA compliance**, **50% escalation** and the longest average resolution time at **15.9 h**. API / Integration is the largest queue and carries a **31% escalation rate**.

The analysis therefore prioritizes **technical-ticket handling and escalation quality** instead of applying the same improvement effort to every queue.

---

## Category Analysis

| Category | Tickets | Avg. Resolution | SLA Compliance | Escalation Rate | Avg. CSAT |
|---|---:|---:|---:|---:|---:|
| API / Integration | 16 | 12.6 h | 69% | 31% | 4.69 |
| Billing | 13 | 9.3 h | 92% | 0% | 4.27 |
| Account | 12 | 10.9 h | 67% | 8% | 4.64 |
| Bug | 10 | **15.9 h** | **40%** | **50%** | 4.29 |
| Authentication | 7 | 10.7 h | 86% | 0% | 4.33 |
| Data Import | 2 | 14.2 h | 50% | 0% | 5.00 |

> Data Import contains only two observations and should not be interpreted as a stable category-level trend.

---

## Operational Recommendations

**Bug triage:** standardize reproduction evidence, severity criteria and Engineering escalation requirements.

**API / Integration:** turn recurring investigations into troubleshooting documentation and reusable runbooks; improve evidence collection before Engineering handoff.

**Billing:** preserve the current workflow rather than prioritizing improvement based on volume alone.

**CSAT interpretation:** evaluate satisfaction alongside SLA, reopen rate, resolution time and escalation instead of treating CSAT as a standalone health measure.

---

## SLA Model

| Priority | First Response Target |
|---|---:|
| Urgent | ≤ 15 min |
| High | ≤ 30 min |
| Normal | ≤ 60 min |
| Low | ≤ 120 min |

`SLA Met = First Response Time <= target for ticket priority`

---

## Repository Structure

```text
support-operations-analytics/
├── src/
│   ├── components/
│   │   └── Dashboard.tsx
│   ├── lib/
│   │   └── analytics.ts
│   ├── types/
│   │   └── support.ts
│   ├── App.tsx
│   ├── main.tsx
│   └── styles.css
├── data/
│   └── support_tickets.csv
├── sql/
│   └── support_analysis.sql
├── analysis/
│   └── findings.md
├── docs/
│   └── metric-definitions.md
├── index.html
├── package.json
├── tsconfig.json
├── tsconfig.app.json
├── vite.config.ts
└── README.md
```

---

## Skills Demonstrated

`React` · `TypeScript` · `Vite` · `Component Architecture` · `Typed Data Models` · `Frontend State` · `Data Visualization` · `SQL` · `Support Operations` · `SLA` · `CSAT` · `KPI Analysis` · `Operational Decision-Making`

---

## Analytical Limitations

This is a deliberately small synthetic dataset. Results demonstrate analytical method rather than production benchmarks. Category sizes vary, CSAT is unavailable for some tickets, and observed relationships do not establish causation. A production analysis would additionally validate metric definitions, data completeness, business hours, SLA policy, seasonality and longer-term trends.

---

## Portfolio Context

I have a professional background in **customer experience, CRM and customer-facing operations** and I am currently pursuing **Software Engineering**. This project connects those areas through a working application that combines support-domain reasoning, data analysis and frontend engineering.

The scenario is fictional and is not presented as work performed for a previous employer.

---

<div align="center">

### Sofia Lozano
Customer Experience · Technical Support · CRM & Support Operations

**[Live Dashboard](https://support-operations-analytics.vercel.app/)** · **[GitHub Profile](https://github.com/sofialozano-cx)**

</div>
