require 'sqlite3'
require 'faker'

dbase = SQLite3::Database.new("streets.db")

create_table = <<-SQ
	CREATE TABLE IF NOT EXISTS streets(
		id INTEGER PRIMARY KEY,
		street VARCHAR(255),
		assigned_cleaner INT,
		cleaned BOOLEAN
	)
SQ

dbase.execute(create_table)

def create_street(dbase, street, assigned_cleaner, cleaned)
	dbase.execute("INSERT INTO streets (street, assigned_cleaner, cleaned) VALUES (?, ?, ?)", [street, assigned_cleaner, cleaned])
end

def retrieve_street(dbase, retrieve)
	dbase.execute("SELECT * FROM streets, WHERE id=#{retrieve}")
end

50.times do
  create_street(dbase, Faker::Address.street_name, Faker::Number.number(4), "true")
end



puts "Would you like to retrieve data?"
ans2 = gets.chomp
	if ans2 == "no"
		puts "Thank you."
	else
		puts "What data would you like to retieve?"
		retrieve = gets.chomp
	end

puts "Would you like to enter a new street?"
ans = gets.chomp

if ans == "yes"
	puts "Please enter the street name."
	new_str = gets.chomp

	puts "Which cleaner is assigned to this street?"
	new_assigned = gets.to_i

	puts "Has this street been cleaned already?"
	new_cleaned = gets.chomp
		if new_cleaned == "yes"
			new_cleaned = true
		else
			new_cleaned = false
		end
else
	puts "Gotcha."
end

create_street(dbase, new_str, new_assigned, new_cleaned)

retrieve_street(dbase, retrieve)
