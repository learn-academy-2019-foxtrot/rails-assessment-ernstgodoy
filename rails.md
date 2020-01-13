# ASSESSMENT 5: INTRO TO RAILS
## Interview Practice Questions

Answer the following questions. First, without external resources. Challenge yourself to answer from memory. Then, research the question to expand on your answer. Even if you feel you have answered the question completely on your own there is always something more to learn.

1. MVC (Model View Controller) is a pattern for the architecture of a software program. Give a brief description of each component and describe how Ruby on Rails handles MVC.

  Your answer:
  
  Model is where you establish relationships between controllers . The view is what gives an app the look. The controller has methods that say what the app does. 

  Researched answer:
  
  Some background, MVC is a (compound) design pattern and was developed in 1979 by Trygve Reenskaug (Smalltalk).

  True MVC was primarily planned for use in n-tier (non web) systems and it splits a system into 3 distinct parts, a Model, View and Controller

  The Model

    Contains data for the application (often linked to a database)
    Contains state of the application (e.g. what orders a customer has)
    Contains all business logic
    Notifies the View of state changes (** not true of ROR, see below)
    No knowledge of user interfaces, so it can be reused
  
  The View

    Generates the user interface which presents data to the user
    Passive, i.e. doesn’t do any processing
    Views work is done once the data is displayed to the user.
    Many views can access the same model for different reasons
  
  The Controller

    Receive events from the outside world (usually through views)
    Interact with the model
    Displays the appropriate view to the user



2. Using the information given, fill in the blanks to complete the steps for creating a new view in a Rails application.

  Step 1: Create the route in the file config/routes.rb
  ```
  get '/about' => 'statics#about'
  ```

  Step 2: Create the controller in the file Filename.controller.rb 
  ```
  class Filename < ApplicationController
    def index
      render json: 
    end
  end
  ```

  Step 3: Create the View in the file about.html.erb
  code:
  ```
  <div>This is the About page!</div>
  ```


3a. Consider the Rails routes below. Describe the responsibility of  each route.


/users/       method="GET"     # :controller => 'users', :action => 'index'

show all information on a table

/users/1      method="GET"     # :controller => 'users', :action => 'show'

show a specific peice of information 

/users/new    method="GET"     # :controller => 'users', :action => 'new'

gets the information for a form

/users/       method="POST"    # :controller => 'users', :action => 'create'

post new information 

/users/1/edit method="GET"     # :controller => 'users', :action => 'edit'

gets the information for the form to edit 

/users/1      method="PUT"     # :controller => 'users', :action => 'update'

edits the information of the param passed

/users/1      method="DELETE"  # :controller => 'users', :action => 'destroy'

deletes the information of the param passed 



3b. Which of the above routes must always be passed params and why?

  Only show, edit, update, destroy pass params. for the example of wildlife tracker we were passing the :id param and we needed the id to be able to show, edit, update, or delete a specific animal. 


4. What is the public folder used for in Rails?

  Your answer: 
  
  Has files that come with making an app
  

  Researched answer:
  
  The public directory contains some of the common files for web applications. By default, HTML templates for HTTP errors, such as 404, 422 and 500, are generated along with a favicon and a robots.txt file. Files that are inside this directory are available in https://appname.com/filename directly.
  
  
  
5. Write a rails route for a controller called "main" and a page called "game" that takes in a parameter called "guess"


  get '/game/:guess' => 'main#game'


6. In an html form, what does the "action" attribute tell you about the form? How do you designate the HTTP verb for the form?

  Your answer:
  
  Action tells the form what to do when submit is pressed 

  Researched answer:
  
  The action attribute is used to inform the browser what page (or script) to call once the "submit" button is pressed.



7. Name two rails generator commands and what files they create:

  Your answer:
  
  rails g model "modelname"
  
  generates a model modelname.rb
  
  rails g controller "controllername" 
  
  generates a controller controllername.controller.rb

  Researched answer:
  
  rails g model 
  
  This command will generate four files:
  
  db/migrate/20140120201010_create_comments.rb
    
    	Migration to create the comments table in your database (your name will include a different timestamp)

  app/models/comment.rb
  
    The Comment model
  
  test/models/comment_test.rb
  
    Testing harness for the comment model
  
  test/fixtures/comments.yml
  
    Sample comments for use in testing
  
  
  Rails g controller. What all did this generate? It made sure a bunch of directories were in our application, and created a controller file, a view file, a functional test file, a helper for the view, a JavaScript file, and a stylesheet file.


8. Rails has a great community and lots of free tutorials to help you learn. Choose one of these resources and look through the material for 10-15 min. List three new things you learned about Rails:
- [Ruby on Rails Tutorial](https://www.tutorialspoint.com/ruby-on-rails/index.htm)
- [Rails for Zombies](http://railsforzombies.org)
- [Rails Guides](http://guides.rubyonrails.org/getting_started.html)

1. If you delete an article, its associated comments will also need to be deleted, otherwise they would simply occupy space in the database. Rails allows you to use the dependent option of an association to achieve this.

2. If you were to publish your blog online, anyone would be able to add, edit and delete articles or delete comments.

Rails provides a very simple HTTP authentication system that will work nicely in this situation.

In the ArticlesController we need to have a way to block access to the various actions if the person is not authenticated. Here we can use the Rails http_basic_authenticate_with method, which allows access to the requested action if that method allows it.

3. The easiest way to work with Rails is to store all external data as UTF-8. If you don't, Ruby libraries and Rails will often be able to convert your native data into UTF-8, but this doesn't always work reliably, so you're better off ensuring that all external data is UTF-8.

9. STRETCH: What are cookies? What is the difference between a session and a cookie?

  Your answer:  
  
  cookies is information stored in your computer when you visit a website.

  Researched answer:
  
  Cookies and Sessions are used to store information. Cookies are only stored on the client-side machine, while sessions get stored on the client as well as a server. A session creates a file in a temporary directory on the server where registered session variables and their values are stored
