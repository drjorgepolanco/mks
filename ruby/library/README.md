#Library Project with Tests

[MakerSquare](http://www.makersquare.com/) lessons.

**See other version of this Project [here](https://github.com/drjorgepolanco/mks/tree/master/immersive/ruby/library).**

###Goals

Implement three clases: **Library**, **Book**, and **Borrower**. 

A **Library** object will keep track of multiple Book objects. 
A **Borrower** object will check out **Book** objects from the Library object, and the Library will manage the Book's checked out status.

###Requirements
- A Book should be able to be marked as checked_out.
- You should be able to check a Book's status (e.g. available or checked out).
- You should be able to add new Books to a Library.
- A Borrower should be able to check out a Book.
- Checked-out Books should be associated with a Borrower.
- Borrowers should be able to check Books back in to the Library (when they're finished with them).
- A Borrower should not be able to check out more than two Books at any given time.
- The Library should be able to list available books and borrowed books.


###Test Results

#####Book
	has a title and author, and nil id
 	has a default status of available
  	can be checked out
#####The book can't be checked out twice.
  	can't be checked out twice in a row
  	can be checked in

#####Borrower
  	has a name

#####Library
  	starts with an empty array of books
  	add new books and assigns it an id
  	can add multiple books
  	allows a Borrower to check out a book by its id
  	knows who borrowed a book
  	does not allow a book to be checked out twice in a row
  	allows a Borrower to check a book back in
  	does not allow a Borrower to check out more than one Book at any given time
  	returns a list of books available
  	allows a book to be checked out after it has been returned
  	returns a list of borrowed books

**Finished in 0.00836 seconds (files took 0.75084 seconds to load)**
######17 examples, 0 failures