require_relative ('../models/category.rb')
require_relative ('../models/transaction.rb')
require_relative ('../models/user.rb')
require ('pry-byebug')
Transaction.delete_all
Category.delete_all
User.delete_all


category1 = Category.new({
  'name' => "Grocery",
  'logo' => "this is a grocery logo"
  })

category2 = Category.new({
  'name' => "House",
  'logo' => "this is a house logo"
  })
category3 = Category.new({
  'name' => "Car",
  'logo' => "this is a car logo"
  })
category4 = Category.new({
  'name' => "Credit Card",
  'logo' => "this is a card logo"
  })
category5 = Category.new({
  'name' => "Telephone",
  'logo' => "this is a phone logo"
  })
category6 = Category.new({
  'name' => "Leisure",
  'logo' => "this is a leisure logo"
  })

category1.save
category2.save
category3.save
category4.save
category5.save
category6.save

user1 = User.new({
  'name' => "Gill Liddle",
  'budget' => "1000.00",
  'overdraft_limit' => "200.00",
  'budget_overspend_flag' => "0" 
  })
user1.save

transaction1 = Transaction.new({
  'transaction_date' => "2017-5-1",
  'category_id' => category1.id,
  'user_id'=> user1.id,
  'amount' => 50.00,
  'description' => "Tesco"
  })
transaction2 = Transaction.new({
  'transaction_date' => "2017-5-2",
  'category_id' => category2.id,
  'user_id'=> user1.id,
  'amount' => 200.16,
  'description' => "Monthly rent"
  })
transaction3 = Transaction.new({
  'transaction_date' => "2017-5-3",
  'category_id' => category3.id,
  'user_id'=> user1.id,
  'amount' => 12.24,
  'description' => "Tesco Petrol"
  })
transaction4 = Transaction.new({
  'transaction_date' => "2017-5-6",
  'category_id' => category2.id,
  'user_id'=> user1.id,
  'amount' => 127.18,
  'description' => "Insurance"
  })
transaction5 = Transaction.new({
  'transaction_date' => "2017-5-9",
  'category_id' => category4.id,
  'user_id'=> user1.id,
  'amount' => 127.18,
  'description' => "Mobile Phone Topup"
  })
transaction6 = Transaction.new({
  'transaction_date' => "2017-5-6",
  'category_id' => category5.id,
  'user_id'=> user1.id,
  'amount' => 127.18,
  'description' => "Gym Membership"
  })
transaction6 = Transaction.new({
  'transaction_date' => "2017-5-4",
  'category_id' => category5.id,
  'user_id'=> user1.id,
  'amount' => 127.18,
  'description' => "Theatre Tickets"
  })



transaction1.save
transaction2.save
transaction3.save
transaction4.save
transaction5.save
transaction6.save


binding.pry
nil


