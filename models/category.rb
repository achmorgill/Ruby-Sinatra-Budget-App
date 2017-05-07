require_relative ('../db/sqlrunner.rb')
class Category


  attr_reader :id
  attr_accessor :name, :logo

  def initialize(params)
    @id = params['id'].to_i
    @name = params['name']
    @logo = params['logo'] 
  end


  def save()
    sql =  "INSERT INTO categories (name,logo) VALUES ('#{@name}','#{@logo}') RETURNING *"
    results = SqlRunner.run(sql).first
    @id = results['id'].to_i
  end

  def Category.all()
    sql = "SELECT * FROM categories"
    results = SqlRunner.run(sql)
    return results.map{|category| Category.new(category)}
  end

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
    sql = "UPDATE categories SET (name, logo) = ('#{@name}','#{@logo}') WHERE id = #{@id}"  
    results = SqlRunner.run(sql)
    return results

  end


end