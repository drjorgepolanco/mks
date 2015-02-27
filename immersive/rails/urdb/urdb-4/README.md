#URDB 0.4
###Active Record Associations (Part 2)

**Join Tables**.

#####Topics:
- **many-to-many relationship**.
- List of associated objects on a `show` view.
- Adding **roles** from the console.
- Listing a movie's roles.

#####Goal:
- Add cast lists to movies: Creating a table `roles` that serves as a join table between `movies` and `stars`.

#####Features:

- The cast list only renders when there are stars associated with the movie.
- The movies only appear on the stars show view if there are movies associated with the star.
- Create index for stars.
- Add link to stars in the nav bar.
- Url for movies & Stars by slug: from `/movies/1` & `/stars/1` to `movies/name-of-movie` & `stars/name-of-star`.