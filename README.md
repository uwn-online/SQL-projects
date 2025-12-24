SQL Projects Repository

This repository documents my structured learning and hands-on practice with SQL, databases, and data analysis workflows using VS Code, MySQL, and SQLite.
It is organised by learning stage, progressing from fundamentals to applied case studies.

Each folder focuses on a different objective. Detailed explanations and analyses live inside the project-level README files, not here.

Repository Structure
SQL-projects/
├── 00-foundations/
│   └── sql-fundamentals/
│
├── 01-database-connections/
│   └── mysql-server-vscode-workbench/
│
├── 02-case-studies/
│   └── chinook-music-store-analytics/
│
├── requirements.txt
└── README.md

Folder Overview
00-foundations

Purpose: Core SQL concepts and syntax practice.

This section contains foundational SQL exercises used to build fluency with:

SELECT statements

Filtering and sorting

Joins

Aggregations

Subqueries and basic analytical patterns

These are learning exercises, not business case studies.

📁 sql-fundamentals/
→ See the project README inside for details.

01-database-connections

Purpose: Working with real database servers and tooling.

This section focuses on:

Connecting VS Code to a MySQL server

Using MySQL Workbench alongside VS Code

Inspecting schemas, tables, users, and permissions

Understanding how SQL clients interact with database engines

📁 mysql-server-vscode-workbench/
→ See the project README inside for setup notes and queries.

02-case-studies

Purpose: Portfolio-ready SQL analytics projects.

This section contains end-to-end analytical work framed around business questions, using realistic datasets.

📁 chinook-music-store-analytics/

SQLite database (Chinook)

Revenue, customer, artist, and genre analysis

SQL queries + analysis notebooks

→ This is the primary portfolio project in the repository.
See the project README inside for full context, methodology, and insights.

Tools & Technologies

SQL (MySQL, SQLite)

VS Code SQL extensions

MySQL Workbench

Python (pandas, sqlite3)

Jupyter Notebooks

Notes

Virtual environments (venv/) are excluded from version control.

Each project folder is self-contained and documented independently.

This repository reflects an iterative learning journey, not a single monolithic project.