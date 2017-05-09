
require( 'sinatra' )
require( 'sinatra/contrib/all' )
require_relative('controllers/user_controller.rb')
require_relative('controllers/transaction_controller.rb')
require_relative('controllers/category_controller.rb')

get '/' do
  @users= User.all().first
  erb( :index )
end


