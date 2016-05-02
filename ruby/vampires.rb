puts "How many employees will be processed?"
employees = gets.to_i

until employees == 0

	puts "What is your name?"
	name = gets.chomp

	puts "How old are you?"
	age = gets.to_i

	puts "What year were you born?"
	year_born = gets.to_i

	puts "Our company cafeteria serves garlic bread. Should we order some for you? (yes/no)"
	garlic_bread = gets.chomp
	garlic_bread.downcase!

	puts "Would you like to enroll in the company's health insurance? (yes/no)"
	insurance = gets.chomp
	insurance.downcase!

	if name == "Drake Cula" || name == "Tu Fang"
		puts "Definitely a vampire."
	elsif "#{2016 - age}" == "#{year_born}" && garlic_bread == "yes" && insurance == "yes"
		puts "Probably not a vampire."
	elsif "#{2016 - age}" != "#{year_born}" && (garlic_bread == "no" || insurance == "no")
		puts "Probably a vampire."
	else
		puts "Results inconclusive."
	end
	employees -= 1
end

puts "Thank you for using our services!"