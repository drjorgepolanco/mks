require_relative 'library'

puts "Creating the library"
library = Library.new
puts ""

puts "---------------------------------------------------------------"
puts "Creating the borrowers"
jorge = Borrower.new("Jorge")
massiel = Borrower.new("Massiel")
edgar = Borrower.new("Edgar")
omar = Borrower.new("Omar")
puts ""

puts "---------------------------------------------------------------"
puts "Creating the books"
obituary_society = Book.new("The Obituary Society", "Jessica L. Randall", "2014", "1st")
portrait_of_my_father = Book.new("41: A Portrait of My Father", "George W. Bush", "2014", "1st")
ruby = Book.new("The Ruby Programming Language", "David Flanagan & Yukihiro Matsumoto", "2008", "1st")
well_grounded_rubyist = Book.new("The Well-Grounded Rubyist", "David A. Black", "2014", "1st")
rails_4 = Book.new("The Rails 4 Way", "Obie Fernandez & Kevin Faustino", "2014", "3rd")
eloquent_ruby = Book.new("Eloquent Ruby", "Russ Olsen", "2011", "1st")
wimpy_kid = Book.new("Dairy of a Wimpy Kid: The Long Haul", "Jeff Kinney", "2014", "1st")
sister_grave = Book.new("My Sister's Grave", "Robert Dugoni", "2014", "1st")
yes_please = Book.new("Yes Please", "Amy Poehler", "2014", "1st")
old_fashioned = Book.new("Old Fashioned", "Rene Gutteridge", "2014", "1st")
gray_mountain = Book.new("Gray Mountain: A Novel", "John Grisham", "2014", "1st")
puts ""

puts "---------------------------------------------------------------"
puts "Adding books to the library"
library.add_book(obituary_society)
library.add_book(portrait_of_my_father)
library.add_book(ruby)
library.add_book(well_grounded_rubyist)
library.add_book(rails_4)
library.add_book(eloquent_ruby)
library.add_book(wimpy_kid)
library.add_book(sister_grave)
library.add_book(yes_please)
library.add_book(old_fashioned)
library.add_book(gray_mountain)
puts ""

puts "---------------------------------------------------------------"
puts "Showing all books with their current status"
library.books
puts ""

puts "---------------------------------------------------------------"
puts "Checking out two books for Jorge"
library.check_out_book(jorge, rails_4)
library.check_out_book(jorge, ruby)
puts ""

puts "---------------------------------------------------------------"
puts "Checking out two books for Massiel"
library.check_out_book(massiel, sister_grave)
library.check_out_book(massiel, obituary_society)
puts ""

puts "---------------------------------------------------------------"
puts "Checking out two books for Edgar"
library.check_out_book(edgar, portrait_of_my_father)
library.check_out_book(edgar, old_fashioned)
puts ""

puts "---------------------------------------------------------------"
puts "Showing all books with their current status"
library.books
puts ""

puts "---------------------------------------------------------------"
puts "Trying to check out another book for Jorge, this should fail since he already has two books at home:"
library.check_out_book(jorge, eloquent_ruby)
puts ""

puts "---------------------------------------------------------------"
puts "This book should still be available since it failed before"
library.check_out_book(omar, eloquent_ruby)
puts ""

puts "---------------------------------------------------------------"
puts "This book should fail since it's already checked out"
library.check_out_book(omar, ruby)
puts ""

puts "---------------------------------------------------------------"
puts "These should return the books each user checked out"
puts ""
puts "Jorge: "
jorge.list_of_borrowed_books
puts ""
puts "Massiel: "
massiel.list_of_borrowed_books
puts ""
puts "Edgar: "
edgar.list_of_borrowed_books
puts ""
puts "Omar: "
omar.list_of_borrowed_books
puts ""

puts "---------------------------------------------------------------"
puts "This should show the borrowed books with their borrowers"
library.borrowed_books
puts ""

puts "---------------------------------------------------------------"
puts "This should show the books currrently available"
library.available_books
puts ""

puts "---------------------------------------------------------------"
puts "This should check a book back in (\"Ruby\" from Jorge)"
library.check_in_book(ruby)
puts ""

puts "---------------------------------------------------------------"
puts "Showing all books with their current status"
library.books
puts ""

puts "---------------------------------------------------------------"
puts "these should return the books each user checked out"
puts ""
puts "Jorge: "
jorge.list_of_borrowed_books
puts ""
puts "Massiel: "
massiel.list_of_borrowed_books
puts ""
puts "Edgar: "
edgar.list_of_borrowed_books
puts ""
puts "Omar: "
omar.list_of_borrowed_books
puts ""

puts "---------------------------------------------------------------"
puts "This should show the borrowed books with their borrowers"
library.borrowed_books
puts ""

puts "---------------------------------------------------------------"
puts "Leave a review of the book \"41: A Portrait of My Father\" from Edgar"
portrait_of_my_father.add_review(edgar, "5", "People with an interest in politics and recent history should enjoy this book.")



















