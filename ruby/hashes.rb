# Ask user for input
	#Ask for name, age, number of children, decor theme, preferred color shades, if they want premium
	# services. 
# Make sure all input is in correct data types
# Print full hash information back to user
# Ask user if they want to udpate information
# Print final version, exit

design = {}

p "What is your name?"
design[:user_name] = gets.chomp

p "What is your age?"
design[:age] = gets.to_i

p "How many children do you have?"
design[:children] = gets.to_i

p "What is your favorite wall color?"
design[:wall] = gets.chomp

p "Do you want a premium, personalized, representative? (y/n)"
design[:want_rep] = gets.chomp

if design[:want_rep] == "y"
	design[:want_rep] = true
else
	design[:want_rep] = false
end

p design

p "Which entry would you like to amend?"
amend = gets.chomp

if amend == "name"
	p "What is your name?"
	design[:user_name] = gets.chomp
elsif amend == "age"
	p "What is your age?"
	design[:age] = gets.to_i
elsif amend == "children"
	p "How many children do you have?"
	design[:children] = gets.to_i
elsif amend == "wall"
	p "What is your favorite wall color?"
	design[:wall] = gets.chomp
elsif amend == "want_rep"
	p "Do you want a premium, personalized, representative? (y/n)"
	design[:want_rep] = gets.chomp
	if design[:want_rep] == "y"
		design[:want_rep] = true
	else
		design[:want_rep] = false
	end
else
	p "Thank you"
end

p design
	



