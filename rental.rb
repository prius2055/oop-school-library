class Rental
  attr_accessor :date
  attr_accessor :book, :person

  def initialize(date, book, person)
    @date = date
    @book = book
    @person = person
  end
  
  # @book = book
  # book.rentals << self

  # @person = person
  # person.rentals << self
end
