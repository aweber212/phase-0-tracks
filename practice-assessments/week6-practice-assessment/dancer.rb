class Dancer

	attr_reader :names, :card, :dancers
	attr_accessor :ages, :age

	def initialize(names, ages, leap = false)
		@dancers = []
		@card = []
		p "Initializing Dancer."
		@names = names
		@ages = ages.to_i
		@leap = leap
		@dancers = dancers.push(names, ages)
	end

	def name
		p names
	end

	# I had trouble with making this code writable and changing the age
	# the new input. I would get the correct age in the instance when I 
	# printed the instance (as seen in the driver code), but it didn't 
	# seem to permenantly change the attribute. I had to move on so as 
	# not to run out of time. 

	# When I try declaring the method age! instead of age, it returns nil
	# instead of the new age in the test. But in calling the method with
	# drive code, the output is the correct age. 

	def age!
		p ages
	end

	def pirouette
		p "*twirls*"
	end

	def bow
		p "*bows*"
	end

	def queue_dance_with(dance_partner)
		@card = card.push(dance_partner)
		p card
	end
	
	# The below method has me stuck. When called, the output gives the user
	# both "Now dancing with" the first name in the array, AND the updated 
	# array without that dancer. But when I run the rspec test, it says
	# it only gets the return of the array, without the printed
	# "Now dancing with #{card[0]}". Despite the fact that that does in fact 
	# print out in the output. 
	# Any help with this would be greatly appretiated. Thanks!

	def begin_next_dance
		"Now dancing with #{@card.delete_at(0)}."
	end

	def can_leap
		@leap = true
	end

end

missy = Dancer.new("Missy El", 35)
p missy.name
p missy.age = 50

missy.queue_dance_with("Dan")
missy.queue_dance_with("Ari")
missy.begin_next_dance

missy.can_leap
p missy


