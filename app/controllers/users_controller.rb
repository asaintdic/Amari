class UsersController < ApplicationController

  get "/users/show" do
    erb :'/users/show'
  end
  
  get "/users/login" do
    erb :"/users/login"
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
  
  get "/users/new" do
    erb :"/users/new"
  end
  
  
  post "/users/new" do
    @user = User.new(first_name: params[:first_name], last_name: params[:last_name], email: params[:email], username: params[:username], password: params[:password])
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

   get "/users/donate" do 
    erb :"users/donate"
  end

end
