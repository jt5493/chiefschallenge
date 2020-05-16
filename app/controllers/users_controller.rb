class UsersController < ApplicationController

  # GET: /users
  get "/login" do
    erb :"/users/login.html"
  end

  post "/login" do
    binding.pry
    user = User.find_by(name: params[:name])
    if user && user.authenticate(params[:password_digest])
      session[:user_id] = user.id     
      redirect "/workouts"
    else 
      @error = "Username or password is incorrect."
      erb :"/login"
    end     
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
