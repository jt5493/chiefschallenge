class UsersController < ApplicationController

  # GET: /users
  get "/users" do
    erb :"/users/index.html"
  end

  # GET: /users/new
  get "/signup" do
    erb :"/users/signup.html"
  end

  # POST: /users
  post "/signup" do
    @user = User.new(params)
    if @user.name.empty? || @user.password_digest.empty?
      @error = "Username and password need to be filled in."
      erb :"/signup"
    elsif User.find_by(name: @user.name)
      @error = "That account exists already."
      erb :"/signup"
    else 
      @user.save 
      session[:user_id] = @user.id     
      redirect "/workouts"
    end
  end

  # GET: /users/5
  get "/users/:id" do
    erb :"/users/show.html"
  end

  # GET: /users/5/edit
  get "/users/:id/edit" do
    erb :"/users/edit.html"
  end

  # PATCH: /users/5
  patch "/users/:id" do
    redirect "/users/:id"
  end

  # DELETE: /users/5/delete
  delete "/users/:id/delete" do
    redirect "/users"
  end
end
