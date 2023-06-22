class Classroom
  attr_accessor :label 

  def initialize(label)
    @id = label
    @student = []
  end
end