
require_relative ('../db/sqlrunner.rb')
class Category


  attr_reader :id
  attr_accessor :name

  def initialize(params)
    @id = params['id'].to_i
    @name = params['name']
  end


  def save()
    sql =  "INSERT INTO categories (name) VALUES ('#{@name}') RETURNING *"
    results = SqlRunner.run(sql).first
    @id = results['id'].to_i
  end

  def Category.all()
    sql = "SELECT * FROM categories"
    results = SqlRunner.run(sql)
    return results.map{|category| Category.new(category)}
  end
# This could cause a Foreign Key violation as items in the transaction table refer to items in the category table
  def Category.delete_all()
    sql = "DELETE FROM categories"
    SqlRunner.run(sql)
  end

  def destroy(id)
    sql = "DELETE FROM categories WHERE id = #{id}"
    SqlRunner.run(sql)
  end

  def Category.find(id)
    sql = "SELECT * FROM categories WHERE id=#{id}"
    results = SqlRunner.run(sql)
    return Category.new(results.first)
  end

  def update()
    sql = "UPDATE categories SET (name) = ('#{@name}') WHERE id = #{@id}"
    results = SqlRunner.run(sql)
    return results

  end

  def total()
    sql = "SELECT sum(amount) as total FROM transactions WHERE category_id = #{@id}"
    puts "++++  TOTAL#{sql.inspect}"
    category_total = SqlRunner.run(sql).first["total"].to_f
    puts "++++++++++++++total #{category_total.inspect}"
    return category_total
  end

  def total_may()
    start_date= '1-5-17'
    end_date= '31-5-17'
    sql = "SELECT sum(amount) as total FROM transactions WHERE transaction_date>='#{start_date}' and transaction_date<='#{end_date}' and category_id= #{@id} "
    puts "++++  MAY#{sql.inspect}"
    category_total = SqlRunner.run(sql).first["total"].to_f
    puts "++++++++++++++total MAY #{category_total.inspect}"
    return category_total
  end

  def total_june()
    start_date= "1-6-17"
    end_date= "30-6-17"
    sql = "SELECT sum(amount) as total FROM transactions WHERE transaction_date>='#{start_date}' and transaction_date<='#{end_date}' and category_id= #{@id} "
    puts "++++  JUNE#{sql.inspect}"
    category_total = SqlRunner.run(sql).first["total"].to_f
    puts "++++++++++++++total JUNE #{category_total.inspect}"
    return category_total
  end


end
