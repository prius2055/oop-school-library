require './person'

class Teacher < Person
  def initialize(age, name, specialization, parent_permission: true)
    super(age, name, parent_permission: true)
    @specialization = specialization
    @parent_permission = parent_permission
  end

  def can_use_services?
    true
  end
end
