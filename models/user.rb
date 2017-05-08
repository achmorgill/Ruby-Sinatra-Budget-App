require_relative ('../db/sqlrunner.rb')
class User

  attr_reader :id
  attr_accessor :name, :budget, :transaction_id, :overdraft_limit, :budget_overspend_flag

  def initialize(params)
    @name = params['name']
    @budget = params['budget'].to_f
    @transaction_id = params['transaction_id']
    @overdraft_limit = params['overdraft_limit'].to_f
    @budget_overspend_flag = params['budget_overspend_flag'].to_i
  end

  def save()
    sql =  "INSERT INTO users (name,budget,transaction_id,overdraft_limit,budget_overspend_flag) VALUES ('#{@name}','#{@budget}','#{@transaction_id}','#{@overdraft_limit}',#{@budget_overspend_flag}) RETURNING *"
    results = SqlRunner.run(sql).first
    @id = results['id'].to_i
  end

  def User.all()
    sql = "SELECT * FROM users"
    results = SqlRunner.run(sql)
    return results.map{|user| User.new(user)}
  end

def User.delete_all()
  sql = "DELETE FROM users"
  SqlRunner.run(sql)
end

def destroy(id)
  sql = "DELETE FROM users WHERE id = #{id}"
  SqlRunner.run(sql)
end

def User.find(id)
  sql = "SELECT * FROM users WHERE id = #{id}"
  results = SqlRunner.run(sql)
  return User.new(results.first)
end
def update()
    sql = "UPDATE users SET (name,budget,transaction_id,overdraft_limit,budget_overspend_flag) = ('#{@name}','#{@budget}', '#{@transaction_id}', '#{@overdraft_limit}', '#{@budget_overspend_flag}') WHERE id = #{@id}"  
    results = SqlRunner.run(sql)
    return results
end
end

