class UsersController < ApplicationController

  
  get "/users/login" do
    erb :"/users/login"
  end

  
  get "/users/new" do
    erb :"/users/new"
  end

  
  post "/users/login" do
    @user = User.find_by(username: params[:username])
      if @user && @user.authenticate(params[:password])
        session[:user_id] = @user.id
        redirect "/users/show"
      else
        redirect "/failure"
      end
   
  end

 
  post "/users/new" do
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
  
  get "/users/request" do 
    erb :"users/request"
  end

  get "/request/new" do
    erb :"/request/new"
  end

  get "/request/show" do
    erb :"/request/show"
  end

  post '/request/new' do 
  @request = Request.new
  @request.save
  session[:user_id] = @user.id 
  erb :"/request/show"
  end 

  get "/users/donate" do 
    erb :"users/donate"
  end
  
  get "/failure" do
    erb :"/failure"
  end 
  # # GET: /users/5
  # get "/users/:id" do
  #   erb :"/users/show"
  # end

  # # GET: /users/5/edit
  # get "/users/:id/edit" do
  #   erb :"/users/edit"
  # end

  # # PATCH: /users/5
  # patch "/users/:id" do
  #   redirect "/users/:id"
  # end

  # # DELETE: /users/5/delete
  # delete "/users/:id/delete" do
  #   redirect "/users"
  # end
end
