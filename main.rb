require './app'

def main
  app = App.new

  loop do
    puts 'School Library System'
    puts '1. List all books'
    puts '2. List all people'
    puts '3. Create a person'
    puts '4. Create a book'
    puts '5. Create a rental'
    puts '6. List all rentals for a given person id'
    puts '7. Exit'
    puts 'Enter your choice (1-7):'

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
      puts 'Thank you for using this app. See you around soon!'
      break
    else
      puts 'Invalid choice. Please enter a number from 1 to 7.'
    end

    puts "\n"
  end
end

main
