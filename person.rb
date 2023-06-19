class Person

  def initialize(name = 'unknown', parent_permission = true, age)
    @id = Random.rand(1..1000)
    @name = name
    @age = age
  end

  attr_reader :id
  attr_reader :name
  attr_reader :age
  attr_reader :parent_permission

  attr_writer :name 
  attr_writer :age

  def can_use_services?
    if @age > 18 || @parent_permission == true
        true
    else
        false
    end
end

    private

    def of_age?
        if @age >= 18 
            true
        else
            false
        end
    end
        
end
