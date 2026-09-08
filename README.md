<div align="center">

# Support Operations Analytics

### Support KPIs · SQL · SLA · CSAT · Operational Insights

![Status](https://img.shields.io/badge/Status-Live-6D28D9?style=flat-square)
![SQL](https://img.shields.io/badge/Analysis-SQL-4F46E5?style=flat-square)
![Data](https://img.shields.io/badge/Dataset-Synthetic-7C3AED?style=flat-square)
![Dashboard](https://img.shields.io/badge/Dashboard-Interactive-8B5CF6?style=flat-square)

**[→ Open Live Dashboard](https://support-operations-analytics.vercel.app/)**

</div>

---

## Overview

This project analyzes a **fictional SaaS support operation** using a synthetic ticket dataset and an interactive dashboard. The objective is to demonstrate how support data can be translated into operational decisions rather than treated as isolated metrics.

The analysis connects **First Response Time, Resolution Time, SLA Compliance, CSAT, escalation, reopen rate, ticket category, channel and priority**. The live dashboard adds dynamic segmentation so the operation can be explored by category, channel and priority.

> The dataset is synthetic and was created exclusively for portfolio analysis. It contains no real customer or employer data.

### Live Project

**[Launch Interactive Dashboard →](https://support-operations-analytics.vercel.app/)**  
**[View Source Repository →](https://github.com/sofialozano-cx/support-operations-analytics)**

---

## What the Dashboard Demonstrates

- Dynamic filtering by **category, channel and priority**.
- Live calculation of **ticket volume, SLA compliance, average first response, average resolution and CSAT**.
- Category-level comparison of ticket volume and SLA performance.
- Operational-health table combining volume, SLA, escalation and resolution time.
- Context-aware operational signals that distinguish between **healthy performance, monitoring signals and higher-priority risk**.
- Direct use of the project's synthetic CSV dataset as the dashboard data source.
- Responsive presentation for desktop and mobile.

---

## Business Questions

1. Is the support operation meeting its response SLAs?
2. Which issue categories create the most operational friction?
3. Where are escalations concentrated?
4. Which categories take longest to resolve?
5. What does CSAT reveal that volume alone does not?
6. Where should Support Operations focus first?

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

\*CSAT average uses tickets where a survey response exists.

### Main finding

The overall CSAT is strong, but the operation has a **reliability problem hidden behind the average satisfaction score**. Only 70% of tickets meet first-response SLA, while Bug tickets meet SLA only 40% of the time and have the longest average resolution time (15.9 h). API / Integration tickets represent the largest category and carry a 31% escalation rate.

This suggests the first improvement priority should be **technical-ticket handling**, not a generic effort to reduce response time equally across every queue.

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

> Data Import has only two observations, so it should not be treated as a stable category-level trend.

---

## Operational Diagnosis

### 1. Bug queue is the clearest bottleneck

Bug tickets combine three negative signals: the **longest average resolution time**, **lowest SLA compliance**, and **highest escalation rate**. This is more actionable than looking at ticket volume alone.

**Recommendation:** create a dedicated bug-triage workflow with required reproduction evidence, severity criteria and a standardized Engineering escalation template.

### 2. API / Integration deserves proactive support investment

API / Integration is the largest ticket category (16/60) and almost one-third of these tickets are escalated.

**Recommendation:** analyze recurring API drivers and turn repeat investigations into troubleshooting documentation, examples and internal runbooks. Better evidence collection at first contact may also reduce unnecessary Engineering handoffs.

### 3. Billing demonstrates that volume does not equal operational difficulty

Billing has 13 tickets — the second-highest volume — but 92% SLA compliance, zero escalations in this sample and the fastest category-level average resolution among the larger queues.

**Recommendation:** preserve the workflow rather than allocating improvement effort based solely on volume.

### 4. CSAT needs context

An average CSAT of 4.50 can make the operation appear healthier than it is. SLA compliance is only 70%, and 16.7% of tickets reopen.

**Recommendation:** review CSAT together with SLA, reopen rate, resolution time and escalation instead of using satisfaction as a standalone health metric.

---

## SLA Definition Used in This Simulation

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
│
├── README.md
├── index.html
├── dashboard/
│   └── index.html
├── data/
│   └── support_tickets.csv
├── sql/
│   └── support_analysis.sql
├── analysis/
│   └── findings.md
└── docs/
    └── metric-definitions.md
```

---

## Analysis Workflow

```text
Synthetic Ticket Data
        ↓
Data Quality Check
        ↓
Define Support KPIs
        ↓
SQL Analysis
        ↓
Segment by Category / Priority / Channel
        ↓
Identify Operational Bottlenecks
        ↓
Interactive Dashboard
        ↓
Recommend Support Improvements
```

---

## Skills Demonstrated

`Support Operations` · `SQL` · `Customer Experience Analytics` · `SLA` · `CSAT` · `First Response Time` · `Resolution Time` · `Escalation Rate` · `Reopen Rate` · `KPI Analysis` · `Operational Decision-Making` · `Data Visualization` · `HTML` · `CSS` · `JavaScript`

---

## Analytical Limitations

This is a deliberately small portfolio dataset. Results should be interpreted as demonstrations of analytical method rather than production benchmarks. Category sizes vary, CSAT is not available for every ticket, and observed relationships do not establish causation. A real Support Operations analysis would additionally validate metric definitions, data completeness, business hours, SLA policy, seasonality and longer-term trends.

---

## Portfolio Context

I have a professional background in **customer experience, CRM and customer-facing operations** and I am currently pursuing **Software Engineering**. This project connects those areas by demonstrating how I would use structured support data to understand operational performance and prioritize improvements.

The data and business scenario are fictional. The analysis is portfolio work and is not presented as analysis performed for a previous employer.

---

<div align="center">

### Sofia Lozano
Customer Experience · Technical Support · CRM & Support Operations

**[Live Dashboard](https://support-operations-analytics.vercel.app/)** · **[GitHub Profile](https://github.com/sofialozano-cx)**

</div>
