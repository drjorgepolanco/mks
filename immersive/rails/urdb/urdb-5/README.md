#URDB 0.5
###Model Methods with RSPEC Testing & Rotten Tomatoes API 

This IMDB Clone has been developed following the **thirteenth lesson** on [Rails](http://rubyonrails.org/) at [**MakerSquare**](http://www.makersquare.com/).

Base code taken from **github:** [makersquare/urdb](https://github.com/makersquare/urdb/tree/day-4-start).

#####Purpose:

Get better creating **Model Methods** and Testing them with **RSPEC**.

#####Topics:
- How to create **tested custom model methods** to handle 'business logic'.
- How to use **RSPEC** stubs to write better tests.
- How to use **ActiveRecord queries** to retrieve data from the database.

#####Goal:
- Create and test model methods to interact with the **Rotten Tomatoes API**.

#####Challenge:

- Create a model method `audience_rating` that returns the **audience_score** of each movie and returns nil if the movie is not found.
- Implement a class method called `average_rating` that returns the average audience_score of all movies found, and returns nil if no movies were found.
- Test those methods with **RSPEC**:
	- `#audience_rating`:
		- When Movie is found on Rotten Tomatoes.
		- When Movie is not found.
	- `.average_rating`:
		- When all Movies can be found.
		- When some Movies are not found.
		- When no Movies are found.
		
######Results:

Finished in 0.02365 seconds (files took 1.91 seconds to load)

**8 examples, 0 failures**	