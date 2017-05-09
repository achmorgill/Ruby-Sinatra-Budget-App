require_relative ('../models/category.rb')
require_relative ('../models/transaction.rb')
require_relative ('../models/user.rb')
require ('pry-byebug')
Transaction.delete_all
Category.delete_all
User.delete_all


category1 = Category.new({
  'name' => "Grocery"
  })

category2 = Category.new({
  'name' => "House"
  })
category3 = Category.new({
  'name' => "Car"
  })
category4 = Category.new({
  'name' => "Credit Card",
  })
category5 = Category.new({
  'name' => "Telephone"
  })
category6 = Category.new({
  'name' => "Leisure"
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
  'amount' => 450.00,
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
  'amount' => 145.18,
  'description' => "TSB Visa Bill"
  })
transaction6 = Transaction.new({
  'transaction_date' => "2017-5-6",
  'category_id' => category6.id,
  'user_id'=> user1.id,
  'amount' => 45.00,
  'description' => "Gym Membership"
  })
transaction6 = Transaction.new({
  'transaction_date' => "2017-5-4",
  'category_id' => category6.id,
  'user_id'=> user1.id,
  'amount' => 27.18,
  'description' => "Theatre Tickets"
  })
transaction7 = Transaction.new({
  'transaction_date' => "2017-5-1",
  'category_id' => category1.id,
  'user_id'=> user1.id,
  'amount' => 87.45,
  'description' => "Asda"
  })
transaction8 = Transaction.new({
  'transaction_date' => "2017-5-1",
  'category_id' => category1.id,
  'user_id'=> user1.id,
  'amount' => 50.00,
  'description' => "Asda"
  })
transaction9 = Transaction.new({
  'transaction_date' => "2017-5-2",
  'category_id' => category2.id,
  'user_id'=> user1.id,
  'amount' => 43.00,
  'description' => "Electricity Bill"
  })
transaction10 = Transaction.new({
  'transaction_date' => "2017-5-3",
  'category_id' => category3.id,
  'user_id'=> user1.id,
  'amount' => 25.17,
  'description' => "Tesco Petrol"
  })
transaction11 = Transaction.new({
  'transaction_date' => "2017-5-6",
  'category_id' => category2.id,
  'user_id'=> user1.id,
  'amount' => 127.18,
  'description' => "Gas Bill"
  })



transaction1.save
transaction2.save
transaction3.save
transaction4.save
transaction5.save
transaction6.save
transaction7.save
transaction8.save
transaction9.save
transaction10.save
transaction11.save


binding.pry
nil


