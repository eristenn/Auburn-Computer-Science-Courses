Assignment 3: Views, Triggers, and Access Control
Database Systems 1

Objective:

In Assignment 2 you designed a schema on paper. Now you will extend that design by thinking about how real people with different roles and different needs will actually use your platform. In this assignment you will design a data access layer using views and triggers, written against your Assignment 2 schema. There is no single correct answer here. Every decision you make must be justified.

The Scenario

Your food delivery platform now has three types of users:

Admins who manage the platform and need visibility into everything
Restaurant owners who can only see and manage their own data
Customers who can only see their own orders and history
Your job is to decide what each user type can see, what they can do, and how the database enforces it automatically.

Part 1: User Access Design

Before writing any SQL, document your access design. For each user type:

What data do they need access to?
What should they never see?
What actions should they be allowed to perform?
This is your design document. It should reflect real thinking, not just a list of tables. Minimum one paragraph per user type.

Part 2: Views

Create at least one view per user type (minimum 3 total). More views are welcome if they are justified by your design. Each view must:

Be justified by your Part 1 design
Involve at least two tables
Return only the data that user type should see
For each view explain in plain English what it does, who it is for, and why you designed it this way instead of an alternative approach.

Part 3: Triggers

Design and implement at least three triggers. Each trigger must correspond to a realistic insert, update, or delete event that could actually occur in your platform. You choose what they do, but each one must solve a real problem in your system. At least one trigger must enforce a constraint or prevent an invalid state, not just log an event. Think about:

Keeping derived data consistent automatically
Preventing invalid state changes
Logging important events without relying on the application
For each trigger explain what event fires it, what it does, and what would go wrong in your system if it did not exist.

Part 4: Reflection

Short but specific:

Which design decision was hardest and why?
Did building views or triggers change how you think about your Assignment 2 schema? If yes, what would you do differently?
What is one thing your triggers cannot protect against, and why?
What to Submit:
A Word document or PDF containing all four parts, plus a .sql file with all your CREATE VIEW and CREATE TRIGGER statements. Statements must run cleanly against your Assignment 2 schema.

Grading:

User Access Design: 15 pts
Clear reasoning for each user type
Realistic and justified access decisions
Views: 30 pts
Correct SQL and clean execution
Justified by access design
Quality of design choices
Triggers: 35 pts
Correct SQL and clean execution
Each trigger solves a real problem
At least one enforces a constraint or prevents invalid state
Clear explanation of what breaks without it
Reflection: 20 pts
Specific and honest answers
Evidence of genuine thinking about your own design
AI Policy:
AI is allowed and encouraged as a tool. Your reflection and justifications must represent your own thinking about your own database. A trigger that works but cannot be explained will receive no credit.