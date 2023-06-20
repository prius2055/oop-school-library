require './person'
require './student'
require './teacher'
require './base_decorator'
require './trimmer_decorator'
require './capitalize_decorator'
require './nameable'

teacher = Teacher.new('Arts', 47, teacher)

puts teacher.can_use_services?

person = Person.new(22, 'maximilianus')
person.correct_name

capitalizedPerson = CapitalizeDecorator.new(person)
puts capitalizedPerson.correct_name

capitalizedTrimmedPerson = TrimmerDecorator.new(capitalizedPerson)
puts capitalizedTrimmedPerson.correct_name