#Pizza App

by [Jorge Polanco](http://www.drjorgepolanco.com/).

Base Code taken from **github:** [makersquare/pizza](https://github.com/makersquare/pizza) and improved by me.

**To test:**

1. Open Terminal
2. Write: 
				
		bundle exec rspec spec/pizza_spec.rb
4. Done


--------------------------

###Pizza::Pie
####.initialize
&nbsp;&nbsp;&nbsp;records all of the toppings

&nbsp;&nbsp;&nbsp;defaults the toppings to tomato & cheese, if the pizza has no toppings

#### #vegetarian
&nbsp;&nbsp;&nbsp;tells if a pie is not vegetarian

&nbsp;&nbsp;&nbsp;tells if a pie is vegetarian
#### #deliver!
&nbsp;&nbsp;&nbsp;sets the delivery time for the pizza to 30 minutes from now
#### #late?
######when the pizza arrive past delivery time
&nbsp;&nbsp;&nbsp;returns true


###Pizza::Topping
####.initialize
&nbsp;&nbsp;&nbsp;sets the name of the topping

&nbsp;&nbsp;&nbsp;sets whether or not the topping is vegetarian

<br>

Finished in 0.01277 seconds

**8 examples, 0 failures**