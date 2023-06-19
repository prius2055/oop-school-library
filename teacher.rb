require './person'

class Teacher < Person
  def initialize(specialization)
    super(47, 'teacher')
    @specialization = specialization
  end

  def can_use_services?
    @age > 18 || @parent_permission == true
  end
end
