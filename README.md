# Customer Support Ticketing System Database

## Project Overview
This project implements a complete SQL database schema for a customer support ticketing system. It is designed to handle support requests, track their progress, facilitate communication between support agents and customers, and analyze performance through useful queries and reports.

The database structure includes comprehensive management of customers, agents, tickets, ticket comments, and customer feedback—ideal for any organization needing robust support workflow systems.

---

## Technology Stack

- **Database:** MySQL / PostgreSQL / SQLite (schemas included are adaptable)
- **Files Provided:** SQL schema, sample data insertion, and example queries

---

## Database Schema

### Tables & Fields

- **Customers**  
  - `CustomerID` (PK), `Name`, `Email`, `RegistrationDate`
- **Agents**  
  - `AgentID` (PK), `Name`, `Email`, `Department`
- **Tickets**  
  - `TicketID` (PK), `CustomerID` (FK), `CreatedDate`, `Subject`, `Status`, `Priority`, `AssignedAgentID` (FK), `ResolvedDate`
- **TicketComments**  
  - `CommentID` (PK), `TicketID` (FK), `AgentID` (FK), `CommentText`, `Timestamp`
- **Feedback**  
  - `FeedbackID` (PK), `TicketID` (FK), `CustomerID` (FK), `Rating`, `Comments`, `FeedbackDate`

### Relationships

- Each **ticket** is created by a customer and (optionally) assigned to an agent.
- Tickets are commented on by agents (and optionally customers).
- Each resolved ticket can have customer feedback.
- Supports many-to-one and one-to-many relationships.

---

## Setup Instructions

1. **Choose your SQL Database System** (MySQL, PostgreSQL, SQLite).
2. **Run `schema.sql`** to create tables and schema objects.
3. **Run `insert_sample_data.sql`** to populate initial test data.
4. (Optional) **Run your own queries** or the pre-built ones in `query_examples.sql` for analytics.

---

## Example SQL Queries Provided

- List all open tickets with customer/support agent names
- Find the average resolution time per agent
- Show how many tickets each agent has handled
- Calculate the overall average feedback rating
- Display recent activity (comments) on any ticket

---

## Project Structure

customer-support-ticketing/
│
├── README.md
├── schema.sql # Database tables & constraints
├── insert_sample_data.sql # Sample/seed data for testing
└── query_examples.sql # Useful queries for analytics and reporting

---

## Customization & Expansion Ideas

- Add status history tracking (for escalations, re-assignments)
- Connect to a UI or API for live ticket handling
- Export insights to dashboards (Tableau, Power BI)
- Integrate automated emails on status change

---

## Contact

For questions, feedback, or collaboration opportunities, please reach out at:  
**[Your Name]** — [Your Email or LinkedIn]

---

**License:** MIT (or add your preferred license)

---

## Acknowledgments
Created by [Your Name], 2025. Inspired by practical business needs for support workflow and analytics.

