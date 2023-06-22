require './person'

class Student < Person
  attr_reader :classroom

  def initialize(classroom, age, name, parent_permission: true)
    super(age, name, parent_permission: true)
    @classroom = classroom
    @parent_permission = parent_permission
  end

  def play_hooky
    '¯\(ツ)/¯'
  end

  def classroom=(classroom)
    @classroom = classroom
    classroom.student.push(self) unless classroom.student.include?(self)
  end
end
