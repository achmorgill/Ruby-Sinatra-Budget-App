require('minitest/autorun')
require('minitest/rg')
require_relative ('../models/category.rb')
# require_relative ('../models/transaction.rb')

class CategoryTest < Minitest::Test

  def setup
    @category1 = Category.new("Supermarket","this is a grocery logo")
  end
  #   transation1 = Transaction.New("23 April 2017", category1.id, 50,"Tesco groceries")
  #   user1 = User.new("Joe Bloggs",1000,transaction1.id,200,0)


  def test_category_name
    assert_equal("Supermarket",@category1.name)
  end

  # def test_category_logo
  #   asset_equal("this is a grocery logo",@category1.logo)
  # end

  # def test_transaction_date
  #   assert_equal("23 April 2017",transaction1.date)
  # end

  # def test_transaction_amount
  #   assert_equal(50,transaction1.amount)
  # end

  # def test_transaction_description
  #   assert_equal("Tesco groceries",transaction1.description)
  # end

  # def test_user_name
  #   assert_equal("Joe Bloggs",user1.name)
  # end

  # def test_max_budget
  #   assert_equal(1000,user1.max_budget)
  # end
end

