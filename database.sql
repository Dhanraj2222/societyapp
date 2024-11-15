root>show databases;
+--------------------+
| Database           |
+--------------------+
| Demo               |
| Emp_db             |
| Restaurantdb       |
| Shop__db           |
| Shop_db            |
| blogs_db           |
| carparkinggg       |
| dmcdb              |
| information_schema |
| labdb              |
| mobiles_db         |
| mysql              |
| page_db            |
| performance_schema |
| restaurantdb       |
| societyapp         |
| sys                |
| testdb             |
+--------------------+
18 rows in set (0.01 sec)

root>use societyapp;
Reading table information for completion of table and column names
You can turn off this feature to get a quicker startup with -A

Database changed
root>show tables;
+----------------------+
| Tables_in_societyapp |
+----------------------+
| Announcement         |
| Poll                 |
| PollOption           |
| User                 |
+----------------------+
4 rows in set (0.00 sec)

root>desc Announcement;
+----------------+--------------+------+-----+-------------------+-------------------+
| Field          | Type         | Null | Key | Default           | Extra             |
+----------------+--------------+------+-----+-------------------+-------------------+
| announcementId | int          | NO   | PRI | NULL              | auto_increment    |
| title          | varchar(255) | NO   |     | NULL              |                   |
| content        | text         | NO   |     | NULL              |                   |
| postedBy       | int          | YES  | MUL | NULL              |                   |
| createdAt      | timestamp    | YES  |     | CURRENT_TIMESTAMP | DEFAULT_GENERATED |
+----------------+--------------+------+-----+-------------------+-------------------+
5 rows in set (0.00 sec)

root>desc Poll;
+-----------+--------------+------+-----+-------------------+-------------------+
| Field     | Type         | Null | Key | Default           | Extra             |
+-----------+--------------+------+-----+-------------------+-------------------+
| pollId    | int          | NO   | PRI | NULL              | auto_increment    |
| question  | varchar(255) | NO   |     | NULL              |                   |
| createdBy | int          | YES  | MUL | NULL              |                   |
| createdAt | timestamp    | YES  |     | CURRENT_TIMESTAMP | DEFAULT_GENERATED |
+-----------+--------------+------+-----+-------------------+-------------------+
4 rows in set (0.00 sec)

root>desc PollOption;
+------------+--------------+------+-----+---------+----------------+
| Field      | Type         | Null | Key | Default | Extra          |
+------------+--------------+------+-----+---------+----------------+
| optionId   | int          | NO   | PRI | NULL    | auto_increment |
| pollId     | int          | YES  | MUL | NULL    |                |
| optionText | varchar(255) | NO   |     | NULL    |                |
| voteCount  | int          | YES  |     | 0       |                |
+------------+--------------+------+-----+---------+----------------+
4 rows in set (0.00 sec)

root>desc User;
+-----------+----------------------+------+-----+-------------------+-------------------+
| Field     | Type                 | Null | Key | Default           | Extra             |
+-----------+----------------------+------+-----+-------------------+-------------------+
| userId    | int                  | NO   | PRI | NULL              | auto_increment    |
| name      | varchar(100)         | YES  |     | NULL              |                   |
| email     | varchar(100)         | NO   | UNI | NULL              |                   |
| phone     | varchar(15)          | YES  |     | NULL              |                   |
| password  | varchar(200)         | YES  |     | NULL              |                   |
| role      | enum('admin','user') | NO   |     | NULL              |                   |
| createdAt | timestamp            | YES  |     | CURRENT_TIMESTAMP | DEFAULT_GENERATED |
+-----------+----------------------+------+-----+-------------------+-------------------+

