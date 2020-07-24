class RequestsController < ApplicationController
    
    
    # get '/request/new' do
    #   erb :'/request/new'
    # end


    get "/request" do
       @requests = Request.all
       erb :'request/index'
    end 
        
    
    get "/request/show" do
        erb :"/request/show"
    end

    post '/request/new' do 
        @request = Request.new(params)
        redirect "/request/#{@request.id}"
    end 

    get 'request/:id' do
        @request = Request.find(params[:id])
        erb :'/request/edit'
    end
    
    patch '/request/:id' do
        @request = Request.find(params[:id])
        @request.update(params[:request])
        redirect to "/request/#{ @request.id }"
    end

    delete "/request/:id" do
        Request.destroy(params[:id])
        redirect to "/request"
    end
  

end