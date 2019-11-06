### To set up the database

1. Connect to psql
2. Create the 'bookmark_manager' database using the psql command ``` CREATE DATABASE bookmark_manager; ```
3. Connect to the database using the pqsl command ``` \c bookmark_manager; ```
4. Run the query we have saved in the file 01_create_bookmarks_table.sql

### To run the Bookmark Manager app:

```
rackup -p 3000
```

To view bookmarks, navigate to 'localhost:9292/bookmarks'

### To test
1. Connect to psql
2. Create the 'bookmark_manager_test' database using the psql command ``` CREATE DATABASE "bookmark_manager_test"; ```
3. Connect to the database using the psql command ``` \c bookmark_manager_test ```
4. Run the query we have saved in the file 01_create_bookmarks_table
