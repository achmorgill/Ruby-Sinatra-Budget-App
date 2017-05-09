require('sinatra')
require('sinatra/contrib/all')
require('pry-byebug')
require_relative('../models/transaction.rb')
require_relative('../models/user.rb')
require_relative('../models/category.rb')


get '/transactions/last10' do
 @transactions = Transaction.last10()
 @transactions_total = Transaction.total_last10_transactions().to_f
 @categories = Category.all()
 @users = User.all()
 erb(:"transaction/index")
end

get '/transactions/by_date' do
 @transactions = Transaction.by_date()
 @transactions_total = Transaction.total_transactions_by_date().to_f
 @categories = Category.all()
 @users = User.all()
 erb(:"transaction/index")
end

get '/transactions' do
  @transactions = Transaction.all()
  @transactions_total = Transaction.total_all_transactions().to_f
  @categories = Category.all()
  @users = User.all()
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

get  '/transactions/:id/edit' do
  @transactions = Transaction.find( params[:id] )
  erb( :"transaction/edit" )
end

post '/transactions/:id' do
  Transaction.new(params).update
  redirect to '/transactions'
end

