class Book
  attr_accessor :title, :author, :rentals

  def initialize(title, author)
    @title = title
    @author = author
    @rentals = []
  end

  def add_rentals(person, date)
    rental = Rental.new(date, person, self)
    @rentals.push(rental)
    person.rentals.push(rental)
    rental
  end
end
