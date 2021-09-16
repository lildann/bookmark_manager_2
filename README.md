# bookmark_manager

```
As a user,
So that I can quickly go to web sites I regularly visit
I would like to see the list of bookmarks that I have saved
```

```
As a user,
So that I can save websites that I visit regularly,
I would like to add bookmarks to my library.
```



Instructions for Database Setup and Test Database Setup
----
* Connect to psql
* Create the two databases using the psql command: 
```
CREATE DATABASE bookmark_manager;
CREATE DATABASE bookmark_manager_test;
```
* Connect to each database using the pqsl command 
```
\c bookmark_manager;
\c bookmark_manager_test;
```
* To setup the approriate tables, run the SQL script saved in the `db/migrations` folder in the given order (file 01_create_bookmarks_table.sql)


### To run the Bookmark Manager app:

```
rackup -p 3000
```



