def array_creator(x, y, z)
	array = [x, y, z]
	p array
end

array_creator(3, "eight", nil)
array_creator("January", "Febuary", "March")

def add_to_array(x, y)
	x << y
	p x
end

add_to_array([3, 4, 5], 6)
add_to_array(["blue", 3, "red", 99, nil], "Great!")

fav_teams = []
p fav_teams

fav_teams << "Knicks"
fav_teams << "Giants"
fav_teams << "NYCFC"
fav_teams << "Yankees"
fav_teams << "Rangers"

p fav_teams

fav_teams.delete_at(2)

p fav_teams

fav_teams.insert(2, "NY Red Bulls")

p fav_teams

fav_teams.shift

p fav_teams

p fav_teams.include? "Yankees?"

best_sport_months = [1, 4, 5, 10]

fav_sport_months_and_teams = fav_teams + best_sport_months