require './config/environment'

class UsersController < ApplicationController

  # Users Home
  get "/users" do

  end

  # New
  get '/signup' do
    redirect "/users/#{current_user.id}" if logged_in?
    erb :"users/new"
  end

  # Create
  post '/signup' do
    user = User.new(params)

    # Won't be saved to db unless user filled out password
    if user.errors
      @error = "Please complete all fields!"
      erb :'/users/new'
    # Check if there is an existing username
    elsif User.find_by(username: user.username)
      @error = "This username already exists. Please create a new username."
      erb :'/users/new'
    else
      user = User.create(params)
      user.save
      session[:user_id] = user.id
      redirect '/'
    end
  end

  get '/users/:id' do
    redirect '/' if !logged_in?
    user = User.find_by(id: params[:id])
    # @problems = @user.problems.order('date desc')
    erb :"/users/dashboard"
  end

  # show
  get '/users/:id' do
    user = User.find(params[:id])
    erb :"/users/show"
  end

  # edit
  get '/users/:id/edit' do
    user = User.find(params[:id])
    erb :"/users/edit.html"
  end

  # update
  patch '/users/:id' do
    user = User.find(params[:id])
    user.update(params[:User])
    redirect to "/users/#{user.id}"
  end

  # destroy
  delete '/users/:id' do
    User.destroy(params[:id])
    redirect to '/users'
  end

  def destroy
    User.destroy(params[:id])
    redirect to '/users'
  end
end
