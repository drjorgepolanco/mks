#Makerbook
####Challenge App to Practice 3rd and 4th lesson


by [Jorge Polanco](http://www.drjorgepolanco.com)

#####Active Record, Rails Console, Migrations & Instance Methods

Create a new rails app from scratch:

- The app should be named makerbook.
- Makerbook will serve as a directory of [MakerSquare](http://www.makersquare.com/) alumni. 
- At the very least, include 6 students.
- You will need to create an **index** and **show page**.
- The app should be **databased-backed**: create a users table with the attributes **first_name**, **last_name**, and **picture_url**.
- The show all page should include a list of links. 
	- Display their first name.
	- Using **link_to** and **named routes**, link to each show page.
- The show page should include the first and last name of the student and a picture of the student.
- The UsersController should call from the database using **ActiveRecord calls**.

######Extensions
- Create a **full_name method** in the users model that concatenates the first and last name.
- Add an additional field titled description and using a loop in Rails console, insert a description for each user.