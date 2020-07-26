class RequestsController < ApplicationController
    
# get "/request" do
# @requests = Request.all
# erb :'request/index'
# end 

# get "/request/show" do 
#  erb :'/request/show'
# end
 
# get '/request/new' do
# erb :'/request/new'
# end

# post '/request/new' do 
#  @request = current_user.requests.build(gender: params[:gender], age: params[:age], clothing_size: params[:clothing_size], shoe_size: params[:shoe_size], add_info: params[:add_info], user_id: params[:user_id])
#  if @request.save
#   redirect "/request/show"
#  else
#   redirect "/request/new"
#  end
# end 

# get '/request/:id' do
#  @request = Request.find_by(params[:id])
#  erb :'/request/show'
# end

# get '/request/:id/edit' do
#  @request = Request.find_by(params[:id])
#  erb :'/request/edit'
# end

# patch '/request/:id' do
#  @request = Request.find_by(params[:id])
#  @request.update(params[:request])
#  redirect to "/request/#{ @request.id }"
# end

# delete "/request/:id/delete" do
# @request = Request.find_by(params[:id]) 
# @request.delete  
# # Request.destroy(params[:id])
# redirect to "/request/show"
# end

end