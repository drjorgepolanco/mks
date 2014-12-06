#Data Structure Modeling 2
##Programming Objects
###Reservation List

#####Example:

EatAndLeave is a high class restaurant with a reservation list:

- Cain party of 4 has reserved for 2:00pm.
- Dan party of 2 has reserved for 11:00am.
- Earl party of 5 has reserved for 4:00pm.


#####Hash Representation:

	reservations = [

  		{ :name => "Cain", :time => "2:00pm", :partySize => 4 },
  
  		{ :name => "Dan", :time => "11:00am", :partySize => 2 },
  
  		{ :name => "Earl", :time => "4:00pm", :partySize => 5 }
  
	]
	

#####Task
Convert the Reservation List into a **Object**.