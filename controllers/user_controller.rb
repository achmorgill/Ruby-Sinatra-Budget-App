require('sinatra')
require('sinatra/contrib/all')
require('pry-byebug')
require_relative('../models/user.rb')


get '/users' do
  @users = User.all()
  erb(:"user/index")
end

get '/users/:id/edit' do # edit
  @user = User.find( params[:id] )
  erb( :"user/edit" )
end

post '/users/:id' do
  User.new(params).update
  redirect to '/users'
end



