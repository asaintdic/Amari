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
  
  # get '/request/new' do
  #   erb :'/request/new'
  # end
  
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
 
  get "/request" do
    @requests = Request.all
    erb :'request/index'
 end 

 get "/request/show" do 
     erb :'/request/show'
 end
     
 get '/request/new' do
   erb :'/request/new'
 end
 
 post '/request/new' do 
     @request = current_user.requests.build(gender: params[:gender], age: params[:age], clothing_size: params[:clothing_size], shoe_size: params[:shoe_size], add_info: params[:add_info], user_id: params[:user_id])
    #  @current_user = current_user
     
     if @request.save
      
      redirect "/request/show"
     else
     
      redirect "/request/new"
     end
  end 

get '/request/:id' do
     @request = Request.find_by(params[:id])
     erb :'/request/show'
 end
 
 get '/request/:id/edit' do
     @request = Request.find_by(params[:id])
     erb :'/request/edit'
    end
 
 patch '/request/:id' do
     @request = Request.find_by(params[:id])
     @request.update(params[:request])
     redirect to "/request/#{ @request.id }"
 end
 
 get "/request/:id/delete" do
  @request = Request.find_by(params[:id]) 
  @request.delete  
  # Request.destroy(params[:id])
  redirect to "/request/show"
 end
  
end
