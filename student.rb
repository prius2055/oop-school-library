require './person'

class Student < Person
  def initialize(classroom)
    super(17, 'student')
    @classroom = classroom
  end

  def play_hooky
    '¯\(ツ)/¯'
  end
end
