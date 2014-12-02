#URDB 0.4
###Active Record Associations (Part 2)

This IMDB Clone has been developed following the **twelfth lesson** on [Rails](http://rubyonrails.org/) at [**MakerSquare**](http://www.makersquare.com/).

Base code taken from **github:** [makersquare/urdb](https://github.com/makersquare/urdb/tree/day-3-start).

#####Purpose:

Improve knowledge about Associations using **join tables**.

#####Topics:
- Adding a **many-to-many relationship** to an existing Rails App.
- Use a `has_many :through` relationship via the console.
- Build a list of associated objects on a `show` view.
- Adding **roles** from the console.
- Listing a movie's roles.

#####Goal:
- Add cast lists to movies: Creating a table `roles` that serves as a join table between `movies` and `stars`.

#####Challenge:

- Make sure that the cast list only renders when there are stars associated with the movie.
- Make sure that the movies only appear on the stars show view if there are movies associated with the star.
- Create index for stars.
- Add link to stars in the nav bar.