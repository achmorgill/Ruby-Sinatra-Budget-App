require('sinatra')
require('sinatra/contrib/all')
require('pry-byebug')
require_relative('../models/category.rb')

get '/categories' do
  @categories = Category.all()
  erb (:"category/index")
end 

get '/categories/new' do
  @categories = Category.all()
  erb (:"category/new")
end

post '/categories' do
  Category.new(params).save
  redirect to '/categories'
end
