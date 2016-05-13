require( 'pg')
require_relative('../db/sql_runner')

class Course

  attr_reader( :id, :name )

  def initialize( options )
    @id = options['id'].to_i
    @name = options['name']
  end

  def save()
    sql = "INSERT INTO Courses (name) VALUES ('#{ @name }') RETURNING *"
    return Course.map_items( sql )
  end

  def self.all()
    sql = "SELECT * FROM Courses"
    return Course.map_items(sql)
  end

  def courses
    sql = 
    "SELECT c.* 
    FROM courses c
    INNER JOIN courses op
    ON op.course_id = c.id
    WHERE course_id = #{@id}"
    return Course.map_items(sql)
  end

  def self.delete_all
    sql = "DELETE FROM Courses"
    SqlRunner.run(sql)
  end

  def self.map_items(sql)
      courses = SqlRunner.run(sql)
      result = courses.map { |course| Course.new( course ) }
      return result
  end

end









