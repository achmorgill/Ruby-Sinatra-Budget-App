require('sinatra')
require('sinatra/contrib/all')
require('pry-byebug')
require_relative('../models/transaction.rb')


get '/transactions' do
 @transactions = Transaction.all()
 erb(:"transaction/index")
end

get '/transactions/new' do
  @transactions = Transaction.all()
  @categories = Category.all()
  @users = User.all()
  erb (:"transaction/new")
end

post '/transactions' do
  Transaction.new(params).save
  redirect to '/transactions'
end