Assignment 1: NBA Database Exploration & Query Brainstorming
Database Systems 1

Objective:

Before we dive into advanced SQL queries using the NBA databaseLinks to an external site., you need to become familiar with its structure. This database is significantly larger and more complex than the university or movies database we've been using. Understanding how tables connect and what data they contain will be essential for writing effective queries in the coming weeks. 

This assignment has two goals:

Help you explore and document the database structure in a way that will serve as your reference guide, and
Get you thinking creatively about interesting questions we can answer with NBA data.
Important Note about the NBA Database: This database does not have formal primary key or foreign key constraints defined (this is common with real-world data exports). However, the logical relationships between tables still exist. When documenting primary keys, identify which column(s) uniquely identify each row even if they're not formally declared as PKs. When documenting foreign keys, identify which columns connect to other tables based on matching column names and data (e.g., team_id in one table references id in the team table).

Part 1: Database Structure Documentation

Your task is to explore the NBA database and document 8-10 tables that you think will be most useful for writing queries. You have full freedom to choose which tables to document, but choose wisely - pick tables that have meaningful data and clear connections to other tables.

For each table you document, provide the following information:

Purpose: Write one sentence explaining what this table stores.
Key Columns (Must include ALL of these types):
Primary key column(s) - the unique identifier for rows in this table
Foreign key column(s) - columns that connect to other tables (if any exist)
Name/identifier columns - columns like player_name, team_city, game_id (text that identifies entities)
Data/stat columns - columns like points, wins, height, salary (numerical measurements or statistics)
List at least 5-7 important columns total. You do NOT need to list every single column - focus on the ones that help you understand what the table does.

Relationships: Explain how this table connects to other tables. Be specific about which columns link together (e.g., "common_player_info.team_id connects to team.id").
Part 2: Cool Query Ideas

Now that you've explored the database, come up with 3-5 interesting questions you'd want to answer using this NBA data. Think about what would be genuinely interesting or useful to know.

Your questions should be specific enough that they could be answered with a SQL query, but don't worry about whether you know how to write the query yet - just focus on what you want to find out.

Examples:

"Which player has scored the most total points across all seasons?"
"Which team has the best home court advantage (biggest difference between home and away win percentage)?"
"What was the highest-scoring playoff game ever?"
"Which draft pick position (1st, 2nd, 3rd, etc.) produces the best players on average?"
Be creative! The most interesting queries may be used as practice problems for the entire class in future assignments.

What to Submit:
A Word document or PDF containing your documentation for Part 1 and your query ideas for Part 2.

Resources:

NBA Database: https://www.kaggle.com/datasets/wyattowalsh/basketballLinks to an external site.
Sample Submission: A1_avj0003.pdfDownload A1_avj0003.pdf
Grading:

Part 1 (Database Documentation): 70%
Completeness and accuracy of table documentation
Quality of relationship descriptions
Appropriate table selection
Part 2 (Query Ideas): 30%