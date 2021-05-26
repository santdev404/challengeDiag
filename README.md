# Diagnostikare project

Diagnostikare challenge project.


## Ruby on Rails enviroment tools
- Ruby version: ruby 2.7
- Rails version: rails 6.1
- Postgres db

## Instalation steps:
Once the project is download in local enviroment, enter in the project folder and execute in terminal:
- bundle install
- rails db:create db:migrate
- rails s
- On google chrome type the next URl: http://localhost:3000/

## Generate a new consultation
In order to schedule a consultation follow the instruction below:
- Sign up / Login session.
- Click on New consultation button.
- Fill out the form with the disease information.
- Click schedule button (the consultation is scheduled automatically once the consultation is saved).
- Once the consultation is saved the view will show the schedule data.

## Database configuration
In order to install the database is require to update the credentials inside database.yml
