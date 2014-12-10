#Bar Project
##Test Driven Development

Base code taken from [makersquare/ruby-course](https://github.com/makersquare/ruby-course/tree/bar)

###Goals 
- Wrie code to fix existing specs (9 tests).
- Write new tests and make them pass (9 tests).

###Topics
- Stubbing while testing with RSPEC.
- Dealing with Time.

###Client Requirements
- The Bar must know when it's happy hour or not.
- The Bar must return a price for a given drink name.
- During normal hours, the Bar must not give a discount on prices.
- During happy hours, the bar must give a 50% discount on all drinks.


###Extensions
- A 50% discount is too much for every day. Only apply that on slow days: Mondays and Wednesdays. Otherwise give a 25%.
- Let the owner specify which drinks are susceptible to have the discount.
- Allow the owner to create a unique discount of any percentage at any given time.

###Test Results
#####Bar
  	initializes with a name
  	cannot change its name
  	initializes with an empty menu
  	can add menu items
  	can retrieve menu items
  	has a default happy hour discount of zero
  	can set its happy hour discount
  	only returns a discount when xit's happy hour
  	constrains its happy hour's discount between zero and one
###### #get_price
    returns the price of the item
###### #happy_hour?
    knows when it's happy hour (3:00pm to 4:00pm)
    is not happy hour otherwise
######during normal hours
    does not apply any discount
######during happy hour
    knows to provide a especial discount on mondays and wednesdays

#####MenuItem
  	initializes with a name, price and it can get or not a discount
  	can retrieve the price
######at any given time
    should be able to remove the discount
    should be able to add the discount

**Finished in 0.02577 seconds (files took 0.80244 seconds to load)**
######18 examples, 0 failures