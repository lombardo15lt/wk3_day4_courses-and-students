require( 'pg' )
require_relative('../db/sql_runner')

class Student

  attr_reader( :id, :name)

  def initialize( options )
    @id = options['id'].to_i
    @name = options['name']
  end

  def save()
    sql = "INSERT INTO students (name) VALUES ('#{ @name}') RETURNING *"
    return Student.map_item( sql )
  end

  def self.all()
    sql = "SELECT * FROM Students"
    return Student.map_items(sql)
  end

  def self.delete_all
    sql = "DELETE FROM Courses"
    SqlRunner.run(sql)
  end

  def self.map_items(sql)
    students = SqlRunner.run(sql)
    result = students.map { |student| Student.new(
      student )}
    return result
  end

  def self.map_item(sql)
    result = Student.map_items(sql)
    return result.first
  end

def students
    sql = 
    "SELECT s.*
    FROM students s
    INNER JOIN students op
    ON op.student_id = s.id
    WHERE student_id = #{@id}}"
    return Student.map_items(sql)
  end

  def self_delete_all
    sql = "DELETE FROM Students"
    SqlRunner.run(sql)
  end


  def self.map_items(sql)
      students = SqlRunner.run(sql)
      result = students.map { |student| Course.new( course ) }
      return result
  end

end

































