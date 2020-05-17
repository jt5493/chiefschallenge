class UsersController < ApplicationController

  # GET: /users
  get "/login" do
    erb :"/users/login.html"
  end

  post "/login" do
    user = User.find_by(name: params[:name])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id     
      redirect "/workouts"
    else 
      @error = "Username or password is incorrect."
      erb :"/users/login.html"
    end     
  end

  # GET: /users/new
  get "/signup" do
    erb :"/users/signup.html"
  end

  # POST: /users
  post "/signup" do
    @user = User.new(params)
    if @user.save
      session[:user_id] = @user.id     
      redirect "/workouts"      
    else 
      @error = "Invalid or username already in use."
      erb :"/users/signup.html"
    end
  end

  # GET: /users/5
  get "/logout" do
    session.destroy
    redirect "/"
  end

#   # GET: /users/5/edit
#   get "/users/:id/edit" do
#     erb :"/users/edit.html"
#   end

#   # PATCH: /users/5
#   patch "/users/:id" do
#     redirect "/users/:id"
#   end

#   # DELETE: /users/5/delete
#   delete "/users/:id/delete" do
#     redirect "/users"
#   end
 end
