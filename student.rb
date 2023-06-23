require './person'

class Student < Person
  attr_reader :classroom
  attr_reader :parent_permission

  def initialize(classroom = 'CLASS 4', age, name, parent_permission)
    super(age, name, parent_permission: true)
    @classroom = classroom
    @parent_permission = parent_permission
  end

  def play_hooky
    '¯\(ツ)/¯'
  end

  def classroom=(classroom)
    @classroom = classroom
    classroom.students.push(self) unless classroom.students.include?(self)
  end
end
