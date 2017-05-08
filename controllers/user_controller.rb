require('sinatra')
require('sinatra/contrib/all')
require('pry-byebug')
require_relative('../models/user.rb')


get '/users' do
  @users = User.all()
  erb(:"user/index")
end
