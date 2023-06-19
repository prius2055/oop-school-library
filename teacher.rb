require './person.rb'

class Teacher < Person
  def initialize(specialization)
    super('teacher', 47)
    @specialization = specialization
  end

  def can_use_services?
    if @age > 18 || @parent_permission == true
      true
    else
      false
    end
  end
end
