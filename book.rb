class Book
  attr_accessor :title, :author

  def initialize(title, author)
    @title = title
    @author = author
    @rentals = []
  end

  def add_rentals(rentals)
    @rentals.push(rentals)
    book.rentals = self
  end
end
