# README

This is a simple web application that should display the *Word of the Day* and it's decription, and also ask the User for input of his own words of the dy

Used in this project:

* Ruby version 2.4.1

* Runs on the rails framework (Rails 5.2.3)

* Rails follows the MVC modelling architecture

* To find the releveant codes

  - ./app/controllers/wordbanks_controller.rb contains the main methods that define the CRUD actions of the app. It contains both generated methods and the ones I defined myself.

  -  ./app/assets/javascript and /.app/assets/stylesheets contain the references to the asset pipeline to make them available to the application

  - ./app/views/wordbanks/ contain the view files which creates the html referenced in the controller. The relevant view files are "displayPage.html.erb", "index.html.erb", "new.html.erb" and "show.html.erb"

  - ./db/ contains the schema file which details the database structure (two user defined rows, and two auto_generated by ActiveRecord)

* ...
