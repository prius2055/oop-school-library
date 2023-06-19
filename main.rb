require './person.rb'
require './student.rb'
require './teacher.rb'

teacher = Teacher.new('Arts')

puts teacher.can_use_services?
