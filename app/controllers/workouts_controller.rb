class WorkoutsController < ApplicationController

  # GET: /workouts
  get "/workouts" do
    @workouts = Workout.all
    erb :"/workouts/index.html"
  end

  # GET: /workouts/new
  get "/workouts/new" do
    @excercises = Excercise.all
    erb :"/workouts/new.html"
  end

  # POST: /workouts
  post "/workouts" do    
    workout = Workout.new(params)
    if !workout.date.empty?
      workout.save
      redirect "/workouts"
    else
      @error = "Please enter a date."
      erb :"/workouts/new.html"
    end
  end

  # GET: /workouts/5
  get "/workouts/:id" do
    
    @workout = Workout.find(params[:id])
    erb :"/workouts/show.html"
  end

  # GET: /workouts/5/edit
  get "/workouts/:id/edit" do
    @workout = Workout.find(params[:id])
    erb :"/workouts/edit.html"
  end

  # PATCH: /workouts/5
  patch "/workouts/:id" do
    workout = Workout.find(params[:id])
    workout.update(date: params[:workout][:date])
    redirect "/workouts"
  end


  # DELETE: /workouts/5/delete
  delete "/workouts/:id/delete" do    
    workout = Workout.find(params[:id])
    workout.destroy
    redirect "/workouts"
  end
end
