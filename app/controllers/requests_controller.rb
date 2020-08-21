class RequestsController < ApplicationController
    
    get "/request" do
        @req = current_user.requests
        erb :'request/index'
    end 


    get '/request/new' do
        erb :'/request/new'
    end

    post '/request/new' do 
    @req = current_user.requests.build(gender: params[:gender], age: params[:age], clothing_size: params[:clothing_size], shoe_size: params[:shoe_size], add_info: params[:add_info], user_id: params[:user_id])
    if @req.save
        redirect "/request/#{@req.id}"
    else
        redirect "/request/new"
    end
    end 


    get '/request/:id' do
        @req = Request.find_by_id(params[:id])
        erb :'/request/show'
    end

    get '/request/:id/edit' do
        @req = Request.find_by_id(params[:id])
        erb :'/request/edit'
    end

    patch '/request/:id' do
        @req = Request.find_by_id(params[:id])
        if current_user.id == @req.user_id 
            @req.update(
            gender: params[:gender],
            age: params[:age],
            clothing_size: params[:clothing_size],
            shoe_size: params[:shoe_size],
            add_info: params[:add_info])
         redirect "/request/#{@req.id}"
        else
         redirect "/failure" 
        end
    end


    get "/request/:id/delete" do
        @req = Request.find_by_id(params[:id]) 
        if current_user == @req.user_id
          @req.delete  
          redirect  "/request"
        else
          redirect "/request"
        end

    end
end