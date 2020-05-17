class WorkoutsController < ApplicationController

  # GET: /workouts
  get "/workouts" do
    require_login
    user = User.find_by_id(session[:user_id])
    @workouts = user.workouts
    erb :"/workouts/index.html"                                           
  end

  # GET: /workouts/new
  get "/workouts/new" do
    require_login
    @excercises = Excercise.all
    erb :"/workouts/new.html"
  end

  # POST: /workouts
  post "/workouts" do 
    @workout = current_user.workouts.build(params)  
    # @workout = Workout.new(date: params[:date], user_id: session[:user_id])
    # if !@workout.date.empty?
    if @workout.save
      redirect "/workouts"
    else
      @error = "Please enter a date."
      erb :"/workouts/new.html"
    end
  end

  # GET: /workouts/5
  get "/workouts/:id" do
    require_login
    @workout = Workout.find_by(params[:id])
    if @workout
      erb :"/workouts/show.html"
    else
      redirect '/workouts'
    end
end

  # GET: /workouts/5/edit
  get "/workouts/:id/edit" do
    require_login
    @excercises = Excercise.all
    @workout = Workout.find(params[:id])
    erb :"/workouts/edit.html"
  end

  # PATCH: /workouts/5
  patch "/workouts/:id/edit" do
    binding.pry
    @workout = Workout.find(params[:id])
    @workout.update(date: params[:workout][:date], excercise_ids: params[:excercise_ids])
    redirect "/workouts"
  end


  # DELETE: /workouts/5/delete
  delete "/workouts/:id/delete" do   
    @workout = Workout.find(params[:id])
    @workout.delete
    redirect "/workouts"
  end
end
