Assignment 4: System Performance and Data Access Layer
Database Systems 1

Objective:

Your database is no longer just a schema. It is the backbone of a real platform with real users making real requests. In this assignment you will think like a systems designer, not just a query writer. You will identify the operations your platform actually needs to support, implement them efficiently, and connect them to a Python access layer. Every decision must be justified by evidence, not intuition.

The Scenario

Your food delivery platform is live. Three types of operations happen constantly:

Admins need reports: revenue, growth, delivery performance
Customers need their data: order history, status, spending
The system needs to monitor itself: slow deliveries, failed orders, high demand restaurants
Your job is to design, implement, and optimize the data layer that supports this.

Part 1: Define 3 Core System Operations

Choose 3 real operations your platform needs to support. These are not just SQL queries. They represent actions that a real user or the system would perform.

Think in terms of:

"An admin wants to see..."
"A customer requests..."
"The system needs to identify..."
Each operation must answer a meaningful question about your platform. For each operation:

Describe it in plain English: who triggers it, why do they need it, and what result do they expect?
Clearly state what the operation returns (for example: totals, summaries, rankings, performance metrics)
It must involve at least two tables
It must return aggregated or non-trivial data, not just a single row lookup
Important clarification. A valid operation is something like:

"An admin views total revenue per restaurant over a date range"

Not:

"Get restaurant by ID"

Document your 3 operations before writing any SQL. These will be used in all later parts of the assignment. Note: an operation is a real-world request that results in one or more queries. In this assignment you will implement each operation as a single SQL query.

Part 2: Naive Implementation

This section is diagnosis only. Do not change your query, schema, or add indexes. Your goal is to understand what SQLite is doing, not fix it.

For each operation write the first version of the SQL query that comes to mind. Then run:

EXPLAIN QUERY PLAN
your_query_here;
For each operation explain in plain English what SQLite decided to do:

Where is it scanning when it should be searching?
Where is it building temporary structures?
What is the most expensive step and why?
Identify which table dominates the cost and explain how its size affects performance. A table with 100 rows behaves very differently from one with 500,000.
When reading EXPLAIN output, look for:

SCAN = full table scan, reads every row, expensive
SEARCH = indexed lookup, jumps directly to relevant rows, efficient
TEMP B-TREE = sorting or grouping overhead, built in memory, extra cost
Part 3: Optimization Through Design

Now you may modify your design or query. Every change must be intentional and justified using your analysis from Part 2. Query rewrites must be justified using EXPLAIN output or clear reasoning about reduced work. You must improve performance using at least one of these approaches per operation:

Use or extend a view from Assignment 3 to simplify or pre-aggregate
Make a schema level change: add a column, restructure something, reduce a join
Rewrite the query only if you can explain exactly why the rewrite helps based on your EXPLAIN output
At least one of your three operations must be optimized using a design change (view or schema), not just a query rewrite.

For each operation show:

What you changed and why
The updated query
The updated EXPLAIN QUERY PLAN output
What improved compared to Part 2
Part 4: Indexing

You have a budget of 3 indexes total across all operations. Use them wisely. For each index you create:

Show which column and why that column specifically
Show the EXPLAIN QUERY PLAN before and after adding the index
Explain what SCAN becomes SEARCH and why that matters for this operation
Explain what operation benefits and why this index helps that operation more than others
No spraying indexes everywhere. If you cannot justify an index with before and after evidence from EXPLAIN, do not add it. You may revise or drop indexes before submission if you find a better approach.

Part 5: Python Access Layer

Write a Python script with one function per operation. Each function must:

Accept parameters (for example: restaurant_id, date range, customer_id)
Execute the optimized query from Part 3
Return results in a structured format (list of rows or dictionary), not just print output
Nothing fancy. No UI. Just clean functions that work. Example structure:

get_revenue_by_restaurant(restaurant_id)
get_customer_order_history(customer_id)
get_delivery_performance(start_date, end_date)
Your functions must run against your actual .sqlite file. These functions can be reused or extended for the final project, so write them cleanly.

Part 6: Reflection

Short but specific:

Which of your 3 operations was hardest to optimize and why?
What made the biggest difference: views, indexing, or query rewrite?
Pick one of your operations and explain what would happen to it if the platform grew to 1 million orders. What breaks first?
Did this assignment change anything about how you think about your Assignment 2 schema? What would you do differently?
What to Submit:
A Word document or PDF with all six parts. A .sql file with any new views or schema changes. A .py file with your Python functions. All files must work together against your .sqlite file.

Grading:

System Operations Design: 10 pts
Operations are realistic and meaningful
Clearly described before any SQL is written
Naive Implementation and Diagnosis: 15 pts
Correct EXPLAIN output included
Clear explanation of cost and bottlenecks
Optimization Through Design: 25 pts
At least one design change (not just rewrite)
Before and after EXPLAIN shown
Changes are justified not guessed
Indexing: 20 pts
Before and after EXPLAIN for each index
Clear justification for column choice
Budget of 3 respected
Python Access Layer: 15 pts
One function per operation
Accepts parameters, returns structured results
Runs against actual .sqlite file
Reflection: 15 pts
Specific and honest answers
Evidence of real experimentation
AI Policy:
AI is allowed and encouraged. Your EXPLAIN output, your timing results, and your reflection must come from actual experimentation on your own database. Results that cannot be reproduced from your submitted files will receive no credit.