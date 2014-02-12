week 1 ruby
week 2 html css erb http apis and rest
week 3 databases and active record
week 4 rails and combime everything from the rest of the weeks
        - MVC
        - Rake

Project.io- so they can know our project
single table CRUD app then add on a second table and resful style interaction 

Steps to approsch problem and order

project tracker 

1. Plan
first we PLAN  who will use it what are the inputs and outputs

2. Initialize our app
    rails new project
      git init
      create a database...

3. Build the Model
    -db migration (create schema)
    -create class models

4. Define Routes

5. Write the Controller(s) and the View(s)
    -do the methods, then view see if it works etc
    *index, *new, *create, *show, edit, update, destroy

6. Style

7. Share
___________________________________________________________________________

Planning

  -drawn schemas
  -pseudocode
  -route mapping
  -flow chart to show logic of our thinking.

1. talk about the Data and model it ERD entity relationship diagram

student_names, project_descriptions 
here we have a one to one relationship so put them in a single table called students
so table will be:

Students
id(PK),depend_id(FK)
name
project description
github link

another table:

Dependencies
name type:("API","library")

2. Flow Chart
actions needed to move our models from state to state = state diagram("UML")
 
 Welcome page ->(students#index) all students page ->can go to one student or new student too
  |    search -> (student#show)one student page
  | 
   > student#new new student -> show student
   ALL:(application#welcome)

  student#edit edit student redirect to onestudent(student#show)
  from edit student you can lso destroy (delete)student#destroy

3. Wireframing(taking flow chart) what page is going to look like.









