class UsersController < ApplicationController

  # GET: /users
  get "/users/login" do
    erb :"/users/login"
  end

  # GET: /users/new
  get "/users/new" do
    erb :"/users/new"
  end

  #POST : /users/index(login) add failure login page
  post "/users/login" do
    #   ##your code here
      @user = User.find_by(username: params[:username])
      
      if @user && @user.authenticate(params[:password])
        session[:user_id] = @user.id
        redirect "/users/show"
        else
        redirect "/failure"
      end
    # 
    # redirect "/users/show"
  end

  # POST: /users/new
  post "/users/new" do #add failure sign up page
      @user = User.new(username: params[:username], password: params[:password])
      @user.save
      session[:user_id] = @user.id 
      if params[:username] != ""
        if @user.save
        redirect "/users/show"
        else
        redirect "/failure"
        end
      else 
        redirect "/failure"
      end
    
    redirect "/users/show"
  end
  
  get "/users/request" do #to go to request form
    erb :"users/request"
  end

  get "/users/donate" do #to go to donation page
    erb :"users/donate"
  end
  get "/failure" do
    erb :"/failure"
  end 
  # GET: /users/5
  get "/users/:id" do
    erb :"/users/show"
  end

  # GET: /users/5/edit
  get "/users/:id/edit" do
    erb :"/users/edit"
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
