# module Shout

#	def self.yell_angrily(words)
#		words + "!!!" + " :("
#	end

#	def self.yelling_happily(words)
#		words + "!!!" + " :)"
#	end

# end

# p Shout.yell_angrily("I didn't finish the solo challenge yet")
# p Shout.yelling_happily("But thats ok, I'm almost done")

module Shout

	def yelling(words)
		puts words + "!!!" 
	end

end

class Grouchy_Man
	include Shout
end

class Very_Smart_Dog
	include Shout
end

grouchy_man = Grouchy_Man.new
grouchy_man.yelling("Get off my lawn!")

dog = Very_Smart_Dog.new
dog.yelling("Wow I love you so much Mom WOW hey my tail wheres it going gotta catch it!")
