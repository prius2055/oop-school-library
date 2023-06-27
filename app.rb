require './library'
# require 'JSON/books.json'
# require 'JSON/rentals.json'
# require 'JSON/people.json'

class App
  attr_reader :library

  def initialize
    @library = Library.new
  end

  def list_books
    books = library.list_books
    puts 'List of books:'
    if books.empty?
      puts 'No books found.'
    else
      books.each { |book| puts "Title: '#{book.title}', Author: #{book.author}" }
    end
  end

  def list_people
    people = library.list_people
    puts 'List of people:'
    if people.empty?
      puts 'No people found.'
    else
      people.each { |person| puts "[#{person.class}] Name: #{person.name}, Id: #{person.id} Age: #{person.age}," }
    end
  end

  def create_person
    print 'Do you want to create a student (1) or a teacher (2)? [Input the number]: '
    type = gets.chomp.to_i
    print 'Name: '
    name = gets.chomp
    print 'Age: '
    age = gets.chomp
    case type
    when 1
      print 'Has a parent permission? [Yes/No]: '
      parent_permission = gets.chomp
      library.create_student(age, name, parent_permission)
      puts "Student #{name} created successfully."
    when 2
      print 'Specialization: '
      specialization = gets.chomp
      library.create_teacher(age, name, specialization)
      puts "Teacher #{name} created successfully."
    else
      puts "Invalid person type. Please choose either 'student' or 'teacher'"
    end
  end

  def create_book
    puts 'Enter book title:'
    title = gets.chomp
    puts 'Enter book author:'
    author = gets.chomp

    library.create_book(title, author)
    puts "Book '#{title}' by #{author} created successfully."
  end

  def create_rental
    puts 'Select a book from the available list of books below by number'
    books = library.list_books
    puts 'No books found.' if books.empty?
    books.each_with_index { |book, index| puts "[#{index}] #{book.title} by #{book.author}" }
    book_index = gets.chomp.to_i

    puts 'Select a person from the list below by number (not id)'
    people = library.list_people
    puts 'No people found.' if people.empty?
    people.each_with_index do |person, index|
      puts "[#{index}] Name: #{person.name}, Age: #{person.age}, Id: #{person.id}"
    end
    person_index = gets.chomp.to_i

    puts 'Enter date:'
    rental_date = gets.chomp.to_s

    if library.create_rental(rental_date, book_index, person_index)
      puts 'Rental created successfully.'
    else
      puts 'Failed to create rental. Please check the person ID and book title.'
    end
  end

  def list_rentals_for_person
    print 'Enter person ID:'
    person_id = gets.chomp.to_i

    rental = library.list_rentals_for_person(person_id)
    if rental.empty?
      puts "No rentals found for person with Id #{person_id}."
    else
      rented = rental.first
      puts "Rentals for person with Id #{person_id}"
      puts "Rental date: #{rented.date}, Book: #{rented.book.title} by #{rented.book.author}"
    end
  end

  def save_data
    library.save_data('JSON/books.json', library.books)
    library.save_data('JSON/rentals.json', library.rentals)
    library.save_data('JSON/people.json', library.people)
    print 'Data saved'
  end
end
