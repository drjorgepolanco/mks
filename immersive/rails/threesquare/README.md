#Threesquare
####CRUD Review Challenge App

by [Jorge Polanco](http://www.drjorgepolanco.com)

Rebuild a Rails application from scratch. The app you will be titled threesquare. The name is completely random and the app will store all your favorite places.

#####Intructions:

- Create an app called **threesquare**.
- The controller should include the "golden seven actions", which includes show, index, new, create, edit, update and destroy. 
- Each view page should include **link_to** calls with **named routes**.
- The app should be **databased-backed**: create a locations table with the attributes: **name**, **picture_url** and **review**.
- The app should have **multiple views** for viewing and editing the locations.
- The index page should include a listing of all the locations, a thumbnail of the image, and a snippet of the review.
- Use form_for to create forms for creating objects.
- Create a snippet method in the Location model.
- The forms should be in a partial, so that the new and edit actions load the same form.