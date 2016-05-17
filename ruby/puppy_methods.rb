class Puppy

	def initialize
		p "Initializing new puppy instance..."
	end

  	def fetch(toy)
    	puts "I brought back the #{toy}!"
    	toy
  	end

	def speak(x)  
		p "Woof!" * x
	end

	def roll_over
		p "*rolls over*"
	end

	def dog_years(x)
		p x * 7
	end

	def face_licking
		p "*licks face for ten minutes*"
	end

end

class Kitten

	def initialize
		p "Initializing new kitten instance..."
	end

	def play(toy)
		p "I'll chase the #{toy} for an hour!"
	end

	def jump(x)
		p "*jumps on face at #{x} o'clock*"
	end

end

50.times { Kitten.new }

maddie = Puppy.new

maddie.fetch("ball")
maddie.speak(5)
maddie.roll_over
maddie.dog_years(3)
maddie.face_licking

squash = Kitten.new

squash.play("laser")
squash.jump(2)