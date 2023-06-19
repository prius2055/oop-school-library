require './person.rb'

class Student < Person
    def initialize(classroom)
        super('student',17)
        @classroom = classroom
    end

  def play_hooky
    "¯\(ツ)/¯"
  end

end

