#Pizza Project
##Behavior Driven Development

Base code taken from [makersquare/pizza](https://github.com/makersquare/pizza).

**See other version of this project [here](https://github.com/drjorgepolanco/mks/tree/master/immersive/ruby/ruby-testing/pizza).**

###Lesson Overview
- Using Behavior Driven Development to drive out the structure of classes and methods.
- Using assertions to set expectations of how our code should behave.
- Using describe blocks to indicate what we are testing.

###Client Requirements
- Record pizza's toppings.
- Report back whether or not the pizza is vegetarian based on its toppings.
- Set a delivery time 30 minutes from the moment the pizza is ordered.
- Alert if the pizza is already late.

###Test Results
#####Pizza
######.initialize
    records all of the toppings
    defaults the toppings to cheese, when no toppings where provided
    returns a delivery_time of nil if pizza has not been ordered for delivery
###### #vegetarian?
    returns true if all toppings are vegetarian
###### #add_topping
    adds a new topping to the pizza
###### #deliver!
    should return the current time
###### #late?
    determines whether the delivery time is past

#####Topping
######.initialize
    sets the name of the Topping
    sets whether or not the topping is vegetatian

**Finished in 0.02289 seconds (files took 0.31098 seconds to load)**
######9 examples, 0 failures


