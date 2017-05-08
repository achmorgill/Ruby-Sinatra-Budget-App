
require_relative ('../db/sqlrunner.rb')

class Transaction

  attr_reader :id
  attr_accessor :transaction_date,:description, :category_id, :amount

  def initialize (params)
    @transaction_date = params['transaction_date']
    @category_id = params['category_id']
    @amount = params['amount']
    @description = params['description']
  end

  def save()
    sql =  "INSERT INTO transactions (transaction_date,category_id,amount,description) VALUES ('#{@transaction_date}','#{@category_id}',#{@amount},'#{@description}') RETURNING *"
    results = SqlRunner.run(sql).first
    @id = results['id'].to_i
  end

  def Transaction.all()
    sql = "SELECT * FROM transactions" 
    results = SqlRunner.run(sql)
    return results.map{|transaction| Transaction.new(transaction)}
  end

  def Transaction.delete_all()
    sql = "DELETE FROM transactions"
    SqlRunner.run(sql)
  end

  def destroy(id)
    sql = "DELETE FROM transactions WHERE id = #{id}"
    SqlRunner.run(sql)
  end

  def Transaction.find( id )
    sql = "SELECT * FROM transactions WHERE id=#{id}"
    results = SqlRunner.run( sql )
    return Transaction.new(results.first)
  end

  def update()
    sql = "UPDATE transactions SET (date,category_id,amount,description) = ('#{@transaction_date}','#{@category_id}', '#{@amount}', '#{@description}') WHERE id = #{@id}"  
    results = SqlRunner.run(sql)
    return results
end


end