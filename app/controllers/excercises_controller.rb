class ExcercisesController < ApplicationController

  # GET: /excercises
  get "/excercises" do
    erb :"/excercises/index.html"
  end

  # GET: /excercises/new
  get "/excercises/new" do
    erb :"/excercises/new.html"
  end

  # POST: /excercises
  post "/excercises" do
    redirect "/excercises"
  end

  # GET: /excercises/5
  get "/excercises/:id" do
    erb :"/excercises/show.html"
  end

  # GET: /excercises/5/edit
  get "/excercises/:id/edit" do
    erb :"/excercises/edit.html"
  end

  # PATCH: /excercises/5
  patch "/excercises/:id" do
    redirect "/excercises/:id"
  end

  # DELETE: /excercises/5/delete
  delete "/excercises/:id/delete" do
    redirect "/excercises"
  end
end
