# Social Media Analytics (MySQL Project)

This project is a *Social Media Analytics system* built using *MySQL, designed to simulate a platform where users can post content, follow others, like, comment, view posts, and interact using tags. The project is developed using **XAMPP + phpMyAdmin* and is structured for portfolio and analytics use cases.

---

## Features

- Track *user engagement* (likes, views, comments)
- Monitor *follower/following* growth
- Analyze *trending tags*
- Identify *top performing posts*
- Modular schema ready for BI dashboards and visualizations

---

## Entity-Relationship Diagram (ERD)

The ER Diagram below illustrates the relationships between core entities like users, posts, likes, comments, and others. 

### ER Diagram:

![ER Diagram](docs/ERD.png)

### ERD Explanation:

- *users*: Contains user information like username, email, and created_at
- *posts*: Each post belongs to a user
- *likes*: Tracks which users liked which posts
- *comments*: Records user comments on posts
- *follows*: Self-join table for user follow relationships (follower → following)
- *post_views*: Tracks when a user viewed a post
- *tags*: Each tag can be applied to multiple posts
- *post_tags*: Join table between posts and tags

---

## Folder Structure

social-media-analytics/ ├── database/ │ ├── schema.sql # Full database schema │ └── sample_data.sql # Sample data to test queries ├── queries/ │ └── analytics_queries.sql # Real-world analytics SQL queries ├── docs/ │ ├── ERD.png # ER diagram image │ └── screenshots/ # (Optional) UI or DB screenshots ├── README.md ├── LICENSE └── .gitignore


---

## Sample Analytics Queries

- Top 5 most liked posts
- Most active users (likes + comments)
- Most followed users
- Most used tags
- Post engagement rate (likes + comments + views per post)

*See full SQL in queries/analytics_queries.sql*

---

## How to Run the Project

1. Install [XAMPP](https://www.apachefriends.org/)
2. Start *Apache* and *MySQL*
3. Open [phpMyAdmin](http://localhost/phpmyadmin)
4. Create a new database: social_media_analytics
5. Import schema.sql and sample_data.sql from the /database folder
6. Run your queries using the *SQL tab* or save them to analytics_queries.sql

---


