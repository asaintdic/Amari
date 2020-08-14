class RequestsController < ApplicationController
    
get "/request" do
    @req = Request.all
    erb :'request/index'
end 

get '/request/new' do
    erb :'/request/new'
end

post '/request/new' do 
    @req = Request.create(gender: params[:gender], age: params[:age], clothing_size: params[:clothing_size], shoe_size: params[:shoe_size], add_info: params[:add_info], user_id: params[:user_id])
    if @req.save
    redirect "/request/show"
    else
    redirect "/request/new"
    end
end 


get '/request/:id' do
    @req = Request.find_by(params[:id])
    erb :'/request/show'
end

get '/request/:id/edit' do
    @req = Request.find_by_id(params[:id])
    erb :'/request/edit'
end

patch '/request/:id' do
    @req = Request.find_by_id(params[:id])
    @req.id = params[:id]
    @req.gender = params[:gender]
    @req.age = params[:age]
    @req.clothing_size = params[:clothing_size]
    @req.shoe_size = params[:shoe_size] 
    @req.save
    redirect to "/request"
end

get "/request/:id/delete" do
    @req = Request.find_by(params[:id]) 
    @req.delete  
    redirect to "/request"
end

end