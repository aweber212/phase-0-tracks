class Santa

	attr_reader :age, :ethnicity
	attr_accessor :gender, :reindeer_ranking

	def initialize(gender, ethnicity, age = 0)
		p "Initializing Santa instance..."
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = age
	end

	def speak
		p "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies(cookie)
		p "That was a good #{cookie}!"
	end

	def celebrate_birthday
		@age = age + 1
	end

	def get_mad_at (reindeer)
		@reindeer_ranking == reindeer_ranking.delete(reindeer)
		@reindeer_ranking == reindeer_ranking.push(reindeer)
	end

end

st_nick = Santa.new("male", "white")

st_nick.speak
st_nick.eat_milk_and_cookies("oreo")
st_nick.celebrate_birthday
p st_nick
st_nick.gender = "N/A"
p st_nick
st_nick.get_mad_at("Dancer")
p st_nick

example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
example_age = [*1...140]

100.times do |i|
	  p Santa.new(example_genders.shuffle[i], example_ethnicities.shuffle[i], example_age.shuffle[i])	    
end
