# Create bond class
# Initialiaze method
	# Define attributes
		# bad guys neutralized (integer)
		# arch enemy (string)
		# drinken a martini yet (boolean)
	# Define Methods
		# tell world what his name is
		# add to bad guys neutralized attribute
		# drink a martini

class Bond

	attr_reader :bad_guys_down
	attr_accessor :arch_enemy

	def initialize(bad_guys_down, arch_enemy)
		p "Initializing James Bond instance..."
		@bad_guys_down = bad_guys_down
		@arch_enemy = arch_enemy
		@martini = false
	end

	def name
		p "The name's Bond, James Bond."
	end

	def one_for_the_good_guys
		@bad_guys_down = bad_guys_down + 1
	end

	def martini
		@martini = true
	end

end

sean_connery = Bond.new(4, "Auric Goldfinger")

p "Greetings, 007. How many instance's of yourself would you like to create?"
num_instances = gets.to_i

bonds = []
num_instances.times do 
	james = Bond.new 
	bonds << james
end