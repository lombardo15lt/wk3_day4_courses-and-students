require_relative( 'models/course.rb' )
require_relative( 'models/student.rb' )
require_relative( 'models/timetable.rb' )
require( 'pry-byebug' )

Course.delete_all()
Student.delete_all()
Timetable.delete_all()


course1 = Course.new({ 'name' => 'Ruby', })
course2 = Course.new({ 'name' => 'Java'})
course3 = Course.new({ 'name' => '.Net'})

c1 = course1.save()
c2 = course2.save()
c3 = course3.save()

student1 = Student.new({ 'name' => 'Allan Harrison'})
student2 = Student.new({ 'name' => 'Joe Smitt'})
student3 = Student.new({ 'name' => 'Jo Nesbo'})


s1 = student1.save()
s2 = student2.save()
s3 = student3.save()

timetable1 = Timetable.new({'course_id' => c1.id, 'student_id' => s1.id})
timetable2 = Timetable.new({'course_id' => c2.id, 'student_id' => s1.id})
timetable3 = Timetable.new({'course_id' => c3.id, 'student_id' => s3.id})

t1 = timetable1.save()
t2 = timetable2.save()
t3 = timetable3.save()


binding.pry
nil
