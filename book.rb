class Book
  attr_accessor :title, :author
  attr_reader :rentals

  def initialize(title, author)
    @title = title
    @author = author
    @rentals = []
  end

  # def add_rental(rentals)
  #   @rentals.push(rentals)
  #   book.rentals = self
  # end
end
