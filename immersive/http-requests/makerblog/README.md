# Makerblog Interactor App

by [Jorge Polanco](http://www.drjorgepolanco.com/).

Base Code taken from [MakerSquare](http://www.makersquare.com/) Lessons and improved by me.

To test:

1. Open Terminal
2. To install the Unirest gem, write in the Terminal:

		gem install unirest
		
3. Once the gem is installed, write: 

		ruby makerblog_user_interface.rb
4. Done

-------------------------------

[Makerblog](http://makerblog.herokuapp.com]) is a simple Post Sharing App developed by [MakerSquare](http://www.makersquare.com/), my Alma Mater.

The purpose of this app **(Makerblog Interactor)** is to learn how to interact with a Web Application without leaving the Terminal, using (in this case) the gem [Unirest](http://unirest.io/ruby.html).

The majority of the directions to build this app were provided in one of our Back End lessons.

I slightly improved the final product, created a conditional to check if the **response code** is what it should be for every method, and created a basic **User Interface** so that anyone could **create**, **read**, **update** and **delete** Posts without neccesarily knowing how to write Ruby code.

Once you launch the App from the Terminal, it ask you a couple of questions and shows you how to respond in order to get the desired output.

Enjoy!

<br>

####**MakerBlog:** The ultimate Post creating machine!

#####To get started, write what you want to do.

#####Please choose between: *all*, *create*, *read*, *update* and *delete*:

<br>
###all
**Output:** Shows all the posts currently living in the App.

######Example:

ID: 19643

Title: "Booo" by Totally

Content: yay.

------------------------------
Success

<br>
ID: 19644

Title: "To Kill A Mockingbird" by Gregory Hjl;lkj

Content: OK, I'm sorry, I wish I was better at making up data!.

------------------------------
Success

<br>
ID: 19646

Title: "Title" by Who

Content: post.

------------------------------
Success

<br>
ID: 19647

Title: "Important" by Nick D

Content: PORKCHOP SANDWICHES.

---------------
Success

<br>
###create
It asks your **name**, the desired **title** and the desired **content** of your Post.

**Output:** Creates a new Post with the information you provided and shows you the Post.

######Example:

**Please, write your name:**

Jorge Polanco

**Please, write a title for your Post:**

This is the Title of my Post

**Please, write the content of your Post:**

This is the content of my Post. The post is amazing and I love it.

**You have succesfully created a new post:**

**ID: 19685**

**Title: "This Is The Title Of My Post" by Jorge Polanco**

**Content: This is the content of my Post. The post is amazing and I love it.**
________________________________________
Success

<br>
###read
It asks you the **id** of the Post you want to read.

**Output:** Shows you the **Title** and the **Content** of the Post with the provided **id**.

######Example:
**Please, provide the id of the post you want to read:**

19670

**"To Kill A Mockingbird": OK, I'm sorry, I wish I was better at making up data!**
________________________________________
Success

<br>
###update
It asks you the **id** of the Post you want to update, your **name**, the new **title** and the new **content**.

**Output:** Updates the Post with the new information provided and shows you the updated Post.

######Example:
**Please, provide the id of the post you want to edit:**

19670

**All fields are required. I decided not to implement the option to leave empty fields. Sorry for that!**

**Please, write your name:**

Jorge Polanco

**Please, write a new title for your Post:**

This post will look better with this title

**Please, write a new content for your Post:**

The content of this Post is incredibly important. It can definitely decide the total of your awesomeness for the next 50 years.

**You have succesfully updated the post:**

**ID: 19670**

**Title: "This Post Will Look Better With This Title" by Jorge Polanco**

**Content: The content of this Post is incredibly important. It can definitely decide the total of your awesomeness for the next 50 years.**
________________________________________
Success

<br>
###delete
It asks you the **id** of the Post you wish to get rid of.

**Output:** Removes the Post from [Makerblog](http://makerblog.herokuapp.com/).

######Example:
**Please, provide the id of the post you want to delete:**

19664

**You have succesfully deleted the post 19664.**
________________________________________
Success