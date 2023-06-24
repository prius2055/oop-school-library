require './book'
require './student'
require './teacher'
require './rental'

class Library
  attr_reader :books, :people, :rentals

  def initialize
    @books = []
    @people = []
    @rentals = []
  end

  def create_book(title, author)
    book = Book.new(title, author)
    books.push(book)
    book
  end
  
  def create_student(age, name, parent_permission)
    person = Student.new(age, name, parent_permission)
    people << person
    person
  end
  
  def create_teacher(specialization, age, name)
    person = Teacher.new(specialization, age, name)
    people << person
    person
  end

  def create_rental(rental_date, book_index, person_index)

    person = people[person_index]
    book = books[book_index]
    if person && book
      rental = Rental.new(rental_date, book, person)
      rentals << rental
    else
      nil
    end
  end

  def list_books
    books
  end

  def list_people
    people
  end


  def list_rentals_for_person(person_id)
    rented = []
    rentals.each do |rental| 
      if rental.person.id == person_id
        rented.push(rental)
      end
    end
  end
end


