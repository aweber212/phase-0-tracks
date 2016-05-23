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
	attr_accessor :arch_enemy, :martini

	def initialize(bad_guys_down, arch_enemy, martini)
		p "Initializing James Bond instance..."
		@bad_guys_down = bad_guys_down
		@arch_enemy = arch_enemy
		@martini = martini
	end

	def name
		p "The name's Bond, James Bond."
	end

	def one_for_the_good_guys
		@bad_guys_down = bad_guys_down + 1
	end

	def martini_drinken
		@martini = martini + 1
	end

end

sean_connery = Bond.new(4, "Auric Goldfinger", 3)

p "Greetings, 007. Would you like to create an instance of yourself? (y/n)"
num_instances = gets.chomp


bonds = []
while num_instances == "y"

	p "How many bad guys have you taken care of today, Mr. Bond?"
	bad_guys_down = gets.to_i
	
	p "Who is your arch enemy?"
	arch_enemy = gets.chomp
	
	p "Have you started drinking yet, today, Mr. Bond? (y/n)"
	drinking = gets.chomp
	if drinking == "y"
		martini = 1
	else martini = 0
	end
	
	james = Bond.new(bad_guys_down, arch_enemy, martini)
	bonds.push(james)
	
	p "If you are done creating instances of yourself, please enter 'done'. Otherwise, hit enter."
	another = gets.chomp
	
	if another == "done"
		p bonds
		exit!
	end

# I was trying to figure out how to print the array as a string with
# each attribute for each instance, but I couldn't work it out. The 
# best I could do was an each loop that would only print out the last
# instance entered. Any help would be appretiated!

end

