require('sinatra')
require('sinatra/contrib/all')
require('pry-byebug')
require_relative('./models/user.rb')
require_relative('./models/transaction.rb')
require_relative('./models/category.rb')

get '/users' do
  @users = User.all()
  erb(:index)
end
