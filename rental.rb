class Rental
  attr_accessor :date
  attr_accessor :book, :person

  def initialize(date, book, person)
    @date = date
    @book = book
    @person = person
  end
end
