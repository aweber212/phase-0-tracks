def weather 
	puts "How's the weather out?"
	yield ("dont know")
end

weather { |unknown| puts "I #{unknown} because I've been inside on the terminal all day!"}

nyc_streets = ["Riverside", "Broadway", "CPW", "Fifth Ave", "Park Ave"]

nyc_sports = {'Baseball' => 'Yankees', 'Football' => 'Giants', 'Hockey' => 'Rangers'}

puts "This is the original array"
p nyc_streets

nyc_streets.each do |street|
	street = street + " Vroom"
	p street
end

nyc_streets.map! do |new_street|
	new_street = new_street.reverse
end

p "This is the modified array"
p nyc_streets

puts "This is the original hash"
p nyc_sports

nyc_sports.each do |sport, team|
	puts "In NYC, the #{sport} team is the #{team}."
end

sample_array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
sample_hash = {"Ay" => "A", "Bee" => "B", "Ceee" => "C", "Deeeeee" => "D", "Eeeeeeee" => "E", "Efffff" => "F"}

sample_array.delete_if { |number| number > 8 }
p sample_array

sample_hash.delete_if { |pronounciation, letter| pronounciation.length > 7}
p sample_hash

sample_array.keep_if { |number| number <= 6}
p sample_array

sample_hash.keep_if { |pronounciation, letter| pronounciation.include? "ee"}
p sample_hash