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

capitalized_person = CapitalizeDecorator.new(person)
puts capitalized_person.correct_name

capitalized_trimmed_person = TrimmerDecorator.new(capitalized_person)
puts capitalized_trimmed_person.correct_name
