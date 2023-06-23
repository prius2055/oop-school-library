# require './person'
# require './student'
# require './teacher'
# require './base_decorator'
# require './trimmer_decorator'
# require './capitalize_decorator'
# require './nameable'
# require './rental'
# require './classroom'
# require './book'


require_relative 'app'

def main
  app = App.new

  loop do
    puts "School Library System"
    puts "1. List all books"
    puts "2. List all people"
    puts "3. Create a person"
    puts "4. Create a book"
    puts "5. Create a rental"
    puts "6. List rentals for a person"
    puts "7. Quit"
    puts "Enter your choice (1-7):"

    choice = gets.chomp.to_i

    case choice
    when 1
      app.list_books
    when 2
      app.list_people
    when 3
      app.create_person
    when 4
      app.create_book
    when 5
      app.create_rental
    when 6
      app.list_rentals_for_person
    when 7
      puts "Exiting the app. Goodbye!"
      break
    else
      puts "Invalid choice. Please enter a number from 1 to 7."
    end

    puts "\n"
  end
end

main



# def main

# teacher = Teacher.new('Arts', 47, teacher)

# teacher.can_use_services?

# person = Person.new(22, 'maximilianus')
# person.correct_name

# capitalized_person = CapitalizeDecorator.new(person)
# capitalized_person.correct_name

# capitalized_trimmed_person = TrimmerDecorator.new(capitalized_person)
# capitalized_trimmed_person.correct_name

# classroom = Classroom.new('Class 47')
# student = Student.new(classroom, 17, 'John')
# classroom.add_student(student)

# book = Book.new('Ruby Programming', 'John Smith')

# person = Person.new('Mike')
# person.add_rentals(book, '2023-06-20')

# book.list_books(book)
# book.books.each { |book| puts "#{book.title} by #{book.author}" }

# book.each { |book| puts "#{book.title} by #{book.author}" }
# puts classroom.students.inspect
# puts student.classroom.label
# puts book.rentals.inspect
# puts person.rentals.inspect
# end

# main()