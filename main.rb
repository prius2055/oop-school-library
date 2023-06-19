require './person'
require './student'
require './teacher'

teacher = Teacher.new('Arts')

puts teacher.can_use_services?
