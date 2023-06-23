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
    person = find_person_by_index(person_index)
    book = find_book_by_index(book_index)

   


    if person && book
      rental = Rental.new(rental_date, book, person)
      rentals << rental
      rental
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
    person = find_person_by_id(person_id)
    rentals.select { |rental| rental.person.id == person_id }
  end

  private

  def find_person_by_index(person_index)
    rental_person = []
    people.each_with_index do |person, index| 
      if index == person_index
        rental_person.push(person)
      end
    end
  end

   def find_book_by_index(book_index)
    rental_book = []
    books.each_with_index do |book, index| 
      if index == book_index
        rental_book.push(person)
      end
    end
  end

  def find_person_by_id(person_id)
    people.find { |book| person.id == person_id }
  end
end


