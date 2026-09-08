export type Ticket={ticket_id:string;created_at:string;category:string;channel:string;priority:string;first_response_minutes:number;resolution_hours:number;sla_met:number;escalated:number;reopened:number;csat:number|null}
export type Metrics={tickets:number;sla:number;frt:number;resolution:number;csat:number|null;escalation:number;reopen:number}
export type Filters={category:string;channel:string;priority:string}
