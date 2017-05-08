require_relative ('../models/category.rb')
require_relative ('../models/transaction.rb')
require_relative ('../models/user.rb')
require ('pry-byebug')
User.delete_all
Transaction.delete_all


category1 = Category.new({
  'name' => "Supermarket",
  'logo' => "this is a grocery logo"
  })

category2 = Category.new({
  'name' => "Rent",
  'logo' => "this is a rent logo"
  })
category3 = Category.new({
  'name' => "Car",
  'logo' => "this is a car logo"
  })

category1.save
category2.save
category3.save

transaction1 = Transaction.new({
  'transaction_date' => "2017-5-1",
  'category_id' => category1.id,
  'amount' => 50,
  'description' => "Tesco"
  })
transaction2 = Transaction.new({
  'transaction_date' => "2017-5-2",
  'category_id' => category2.id,
  'amount' => 300,
  'description' => "Monthly rent"
  })
transaction3 = Transaction.new({
  'transaction_date' => "2017-5-3",
  'category_id' => category1.id,
  'amount' => 12,
  'description' => "Tesco Petrol"
  })
transaction4 = Transaction.new({
  'transaction_date' => "2017-5-6",
  'category_id' => category3.id,
  'amount' => 127,
  'description' => "Insurance"
  })

transaction1.save
transaction2.save
transaction3.save
transaction4.save

user1 = User.new({
  'name' => "Joe Bloggs",
  'budget' => "1000",
  'transaction_id' => transaction1.id,
  'overdraft_limit' => "200",
  'budget_overspend_flag' => "0" 
  })
user1.save

binding.pry
nil


