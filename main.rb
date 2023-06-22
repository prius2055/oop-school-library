require './person'
require './student'
require './teacher'
require './base_decorator'
require './trimmer_decorator'
require './capitalize_decorator'
require './nameable'
require './rental'
require './classroom'
require './book'

teacher = Teacher.new('Arts', 47, teacher)

teacher.can_use_services?

person = Person.new(22, 'maximilianus')
person.correct_name

capitalized_person = CapitalizeDecorator.new(person)
capitalized_person.correct_name

capitalized_trimmed_person = TrimmerDecorator.new(capitalized_person)
capitalized_trimmed_person.correct_name

classroom = Classroom.new('Class 47')
student = Student.new(classroom, 17, 'John')
classroom.add_student(student)

book = Book.new('Ruby Programming', 'John Smith')
person = Person.new('Mike')
person.add_rentals(book, '2023-06-20')

puts classroom.students.inspect
puts student.classroom.label
puts book.rentals.inspect
puts person.rentals.inspect
