# Specifications for the Sinatra Assessment

Specs:
- [x] Use Sinatra to build the app --- I am inheriting Sinatra in my main application controller.
- [x] Use ActiveRecord for storing information in a database --- Active Record is being used to establish a connection to my data base and is inherited in each of my models to give me access.
- [x] Include more than one model class (e.g. User, Post, Category) --- I have a user model, a workout model, and an excercise model.
- [x] Include at least one has_many relationship on your User model (e.g. User has_many Posts) --- A user has many workouts and many excercises through workouts.
- [x] Include at least one belongs_to relationship on another model (e.g. Post belongs_to User) --- A workout belongs to a user.
- [x] Include user accounts with unique login attribute (username or email) --- A user can sign up only with a unique username.
- [x] Ensure that the belongs_to resource has routes for Creating, Reading, Updating and Destroying --- A user can create, read, update, and delete a workout.
- [x] Ensure that users can't modify content created by other users --- A user can only modify resources with the same user id.
- [x] Include user input validations --- I have included validations for both presence and uniqueness.
- [x] BONUS - not required - Display validation failures to user with error message (example form URL e.g. /posts/new) --- I have included error messages for when information provided can not be validated.
- [x] Your README.md includes a short description, install instructions, a contributors guide and a link to the license for your code --- README is complete.

Confirm
- [x] You have a large number of small Git commits
- [x] Your commit messages are meaningful
- [x] You made the changes in a commit that relate to the commit message
- [x] You don't include changes in a commit that aren't related to the commit message
