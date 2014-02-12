##WDInstagram2 #LearningRails #LovingIt #YOLO

### Prompt
We're going to create a one model Rails CRUD App from scratch. Our one model here is going to be an Entry.

An Entry has the following:

* Name
* Photo_url
* Date_Taken

Your Rails app should have the following controller actions:

* Index (Displays all entries)
* New (Displays a form to create a new entry)
* Create (Creates a new entry and saves it to the database)
* Show (Displays one particular entry)

### Instructions

FIRST - Work in your folder for today.

1. Create a new rails app called wdinstagram2_app `rails new wdinstagram2_app -d postgresql`
2. Configure your database.yml file (your username, and add localhost as a host)
3. Create a database for your app using psql
4. Create a migration file that will help you create your entries table
5. Run rake db:migrate to actually create that table
6. Create your entry model
7. Create routes for your app using resources (make sure there are only routes for the actions that we need!)
8. Create a controller with the required controller actions (listed above)
9. Define the method for a controller action, then create any corresponding views for that action.
10. Move on to the next controller action until you are done.
11. Add styling to your app. A decent amount should be reusable from last week.
12. Work on the typography for your site:
   * [Typography Essentials - A Getting Started Guide](http://freelancefolder.com/typography-essentials-a-getting-started-guide/)
   * [Choosing the Right Font: A Practical Guide to Typography on the Web](http://webdesign.tutsplus.com/articles/choosing-the-right-font-a-practical-guide-to-typography-on-the-web/)
   * [Best Practices of Combining Typefaces](http://www.smashingmagazine.com/2010/11/04/best-practices-of-combining-typefaces/)
   * [Beautiful Web Type - A showcase of the best typefaces from the Google web fonts directory.](http://hellohappy.org/beautiful-web-type/)

### Bonus

1. Add validation: name and photo_url need to be present, and the date_taken should be more recent than 10/1/2010.
2. Add a column for `caption` to your Entry, which is a text description of the shot. You'll need to generate a database migration for this and then update the rest of your app to be able to display these captions.
