class Book
  attr_reader :author

  def initialize(title, author)
    @author = author
  end
end

class Borrower
  def initialize(name)
  end
end

class Library
  def initialize(name)
    @books = []
  end

  def books
    @books.each do |book|
      if book.checked_out
        puts "\"#{book.title}\": checked out"
      else
        puts "\"#{book.title}\": available"
      end
    end
  end

  def add_book(book)
    @books << book
  end

  def check_out_book(user, book)
    if user.books.length == 2
      puts "This user already has already borrowed two books. Please, advise to return one before taking another one."
      return
    end
    if book.checked_out == false
      book.checked_out = true
      book.current_user = user
      user.books << book
      puts "The user #{user.name} has checket out the book \"#{book.title}\"."
    else
      puts "Sorry, this book is currently unavailable."
    end
  end

  def check_in_book(book)
    if book.checked_out
      puts "The user #{book.current_user.name} has returned the book \"#{book.title}\"."
      book.current_user.books.delete(book)
      book.current_user = nil
      book.checked_out = false
    else
      puts "This book is here already!"
    end
  end

  def available_books
    puts "The following books are currently available:"
    @books.each do |book|
      if book.checked_out == false
        puts "\"#{book.title}\""
      end
    end
  end

  def borrowed_books
    puts "The following books have been checked out: "
    @books.each do |book|
      if book.checked_out
        puts "The book \"#{book.title}\" has been checked out by #{book.current_user.name}."
      end
    end
  end
end