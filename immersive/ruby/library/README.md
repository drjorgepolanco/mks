#Library App

by [Jorge Polanco](http://www.drjorgepolanco.com/).

Base Code taken from **github:** [makersquare/library-project](https://github.com/makersquare/library-project/blob/master/library.rb) and improved by me.

**To test:**

1. Open Terminal
2. Write: ruby testcode.rb
4. Done

---------------------------------------------------------------
####Creating the library

---------------------------------------------------------------
####Creating the borrowers

---------------------------------------------------------------
####Creating the books

---------------------------------------------------------------
####Adding books to the library

---------------------------------------------------------------
####Showing all books with their current status

**"The Obituary Society"** by "Jessica L. Randall". Year: 2014. Edition: 1st. Status: **available**

**"41: A Portrait of My Father"** by "George W. Bush". Year: 2014. Edition: 1st. Status: **available**

**"The Ruby Programming Language"** by "David Flanagan & Yukihiro Matsumoto". Year: 2008. Edition: 1st. Status: **available**

**"The Well-Grounded Rubyist"** by "David A. Black". Year: 2014. Edition: 1st. Status: **available**

**"The Rails 4 Way"** by "Obie Fernandez & Kevin Faustino". Year: 2014. Edition: 3rd. Status: **available**

**"Eloquent Ruby"** by "Russ Olsen". Year: 2011. Edition: 1st. Status: **available**

**"Dairy of a Wimpy Kid: The Long Haul"** by "Jeff Kinney". Year: 2014. Edition: 1st. Status: **available**

**"My Sister's Grave"** by "Robert Dugoni". Year: 2014. Edition: 1st. Status: **available**

**"Yes Please"** by "Amy Poehler". Year: 2014. Edition: 1st. Status: **available**

**"Old Fashioned"** by "Rene Gutteridge". Year: 2014. Edition: 1st. Status: **available**

**"Gray Mountain: A Novel"** by "John Grisham". Year: 2014. Edition: 1st. Status: **available**

---------------------------------------------------------------
####Checking out two books for Jorge

The user **Jorge** has checket out the book **"The Rails 4 Way"**.

The user **Jorge** has checket out the book **"The Ruby Programming Language"**.

---------------------------------------------------------------
####Checking out two books for Massiel

The user **Massiel** has checket out the book **"My Sister's Grave"**.

The user **Massiel** has checket out the book **"The Obituary Society"**.

---------------------------------------------------------------
####Checking out two books for Edgar

The user **Edgar** has checket out the book **"41: A Portrait of My Father"**.

The user **Edgar** has checket out the book **"Old Fashioned"**.

---------------------------------------------------------------
####Showing all books with their current status

**"The Obituary Society"** by "Jessica L. Randall". Year: 2014. Edition: 1st. Status: **checked out**

**"41: A Portrait of My Father"** by "George W. Bush". Year: 2014. Edition: 1st. Status: **checked out**

**"The Ruby Programming Language"** by "David Flanagan & Yukihiro Matsumoto". Year: 2008. Edition: 1st. Status: **checked out**

**"The Well-Grounded Rubyist"** by "David A. Black". Year: 2014. Edition: 1st. Status: **available**

**"The Rails 4 Way"** by "Obie Fernandez & Kevin Faustino". Year: 2014. Edition: 3rd. Status: **checked out**

**"Eloquent Ruby"** by "Russ Olsen". Year: 2011. Edition: 1st. Status: **available**

**"Dairy of a Wimpy Kid: The Long Haul"** by "Jeff Kinney". Year: 2014. Edition: 1st. Status: **available**

**"My Sister's Grave"** by "Robert Dugoni". Year: 2014. Edition: 1st. Status: **checked out**

**"Yes Please"** by "Amy Poehler". Year: 2014. Edition: 1st. Status: **available**

**"Old Fashioned"** by "Rene Gutteridge". Year: 2014. Edition: 1st. Status: **checked out**

**"Gray Mountain: A Novel"** by "John Grisham". Year: 2014. Edition: 1st. Status: **available**

---------------------------------------------------------------
####Trying to check out another book for Jorge, this should fail since he already has two books at home:

This user already has already borrowed two books. Please, advise to return one before taking another one.

---------------------------------------------------------------
####This book should still be available since it failed before

The user **Omar** has checket out the book **"Eloquent Ruby"**.

---------------------------------------------------------------
####This book should fail since it's already checked out

Sorry, this book is currently unavailable.

---------------------------------------------------------------
####These should return the books each user checked out
<br>

#####Jorge:

**Jorge has checked out the following books:**

"The Rails 4 Way"

"The Ruby Programming Language"

<br>
#####Massiel:

**Massiel has checked out the following books:**

"My Sister's Grave"

"The Obituary Society"

<br>
#####Edgar:

**Edgar has checked out the following books:**

"41: A Portrait of My Father"

"Old Fashioned"

<br>
#####Omar:

**Omar has checked out the following books:**

"Eloquent Ruby"

---------------------------------------------------------------
####This should show the borrowed books with their borrowers

**The following books have been checked out:**

The book **"The Obituary Society"** has been checked out by **Massiel**.

The book **"41: A Portrait of My Father"** has been checked out by **Edgar**.

The book **"The Ruby Programming Language"** has been checked out by **Jorge**.

The book **"The Rails 4 Way"** has been checked out by **Jorge**.

The book **"Eloquent Ruby"** has been checked out by **Omar**.

The book **"My Sister's Grave"** has been checked out by **Massiel**.

The book **"Old Fashioned"** has been checked out by **Edgar**.

---------------------------------------------------------------
####This should show the books currrently available

**The following books are currently available:**

**"The Well-Grounded Rubyist"** by "David A. Black". Year: 2014. Edition: 1st.

**"Dairy of a Wimpy Kid: The Long Haul"** by "Jeff Kinney". Year: 2014. Edition: 1st.

**"Yes Please"** by "Amy Poehler". Year: 2014. Edition: 1st.

**"Gray Mountain: A Novel"** by "John Grisham". Year: 2014. Edition: 1st.

---------------------------------------------------------------
####This should check a book back in ("Ruby" from Jorge)

The user **Jorge** has returned the book **"The Ruby Programming Language"**.

---------------------------------------------------------------
####Showing all books with their current status

**"The Obituary Society"** by "Jessica L. Randall". Year: 2014. Edition: 1st. Status: **checked out**

**"41: A Portrait of My Father"** by "George W. Bush". Year: 2014. Edition: 1st. Status: **checked out**

**"The Ruby Programming Language"** by "David Flanagan & Yukihiro Matsumoto". Year: 2008. Edition: 1st. Status: **available**

**"The Well-Grounded Rubyist"** by "David A. Black". Year: 2014. Edition: 1st. Status: **available**

**"The Rails 4 Way"** by "Obie Fernandez & Kevin Faustino". Year: 2014. Edition: 3rd. Status: **checked out**

**"Eloquent Ruby"** by "Russ Olsen". Year: 2011. Edition: 1st. Status: **checked out**

**"Dairy of a Wimpy Kid: The Long Haul"** by "Jeff Kinney". Year: 2014. Edition: 1st. Status: **available**

**"My Sister's Grave"** by "Robert Dugoni". Year: 2014. Edition: 1st. Status: **checked out**

**"Yes Please"** by "Amy Poehler". Year: 2014. Edition: 1st. Status: **available**

**"Old Fashioned"** by "Rene Gutteridge". Year: 2014. Edition: 1st. Status: **checked out**

**"Gray Mountain: A Novel"** by "John Grisham". Year: 2014. Edition: 1st. Status: **available**

---------------------------------------------------------------
####These should return the books each user checked out
<br>

#####Jorge:

**Jorge has checked out the following books:**

"The Rails 4 Way"

<br>
#####Massiel:

**Massiel has checked out the following books:**

"My Sister's Grave"

"The Obituary Society"

<br>
#####Edgar:

**Edgar has checked out the following books:**

"41: A Portrait of My Father"

"Old Fashioned"

<br>
#####Omar:

**Omar has checked out the following books:**

"Eloquent Ruby"

---------------------------------------------------------------
####This should show the borrowed books with their borrowers

**The following books have been checked out:**

The book **"The Obituary Society"** has been checked out by **Massiel**.

The book **"41: A Portrait of My Father"** has been checked out by **Edgar**.

The book **"The Rails 4 Way"** has been checked out by **Jorge**.

The book **"Eloquent Ruby"** has been checked out by **Omar**.

The book **"My Sister's Grave"** has been checked out by **Massiel**.

The book **"Old Fashioned"** has been checked out by **Edgar**.

---------------------------------------------------------------
####Leave a review of the book "41: A Portrait of My Father" from Edgar

**The user Edgar left the following review:**

**Rating:** 5 stars!

**Review:** People with an interest in politics and recent history should enjoy this book.