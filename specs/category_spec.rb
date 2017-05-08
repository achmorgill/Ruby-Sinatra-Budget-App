require('minitest/autorun')
require('minitest/rg')
require_relative ('../models/category.rb')
require_relative ('../models/transaction.rb')
require_relative ('../models/user.rb')

class CategoryTest < Minitest::Test

  def setup
    params1= {
      'name'=> "Supermarket",
      'logo' => "this is a grocery logo",
      'id' => 2
    }
    @category1 = Category.new(params1)
    params2 = {
      'transaction_date'=> "2017-5-4",
      'category1_id'=> 2,
      'amount'=> 50,
      'description'=> "Tesco",
      'id' => 4
    }
    @transaction1 = Transaction.new(params2)

    params3 = {
      'name' => "Joe Bloggs",
      'budget' => 1000,
      'transaction_id' => 4,
      'overdraft_limit' => 200,
      'budget_overspend_flag' => 0, 
      'id'=> 5
    }
    @user1 = User.new(params3)
  end


  # def test_category_name
  #   assert_equal("Supermarket",@category1.name)
  # end

  # def test_category_logo
  #   assert_equal("this is a grocery logo",@category1.logo)
  # end

  def test_transaction_date
    assert_equal("2017-5-4",@transaction1.transaction_date)
  end

  def test_transaction_amount
    assert_equal(50,@transaction1.amount)
  end

  def test_transaction_description
    assert_equal("Tesco",@transaction1.description)
  end

  def test_user_name
    assert_equal("Joe Bloggs",@user1.name)
  end

  def test_budget
    assert_equal(1000,@user1.budget)
  end

  def test_overdraft_limit
    assert_equal(200,@user1.overdraft_limit)
  end

  def test_budget_overspend_flag
    assert_equal(0,@user1.budget_overspend_flag)
  end
end

