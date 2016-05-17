

def calculate(x, y, z)
	if y == '+'
		ans = x + z
	elsif y == '-'
		ans = x - z
	elsif y == '*'
		ans = x * z
	elsif y == '/'
		ans = x / z
	end
	
end

# calculate(3, '+', 5)
# calculate(4, '-', 2)
# calculate(3, '*', 10)
# calculate(21, '/', 7)

terminate = "done"
user_calc = ""

answers = []

while user_calc != terminate

	puts "Please enter your calculation"
	user_calc = gets.chomp

	user_calc.split(' ')

	ans = calculate(user_calc[0].to_i, user_calc[2], user_calc[4].to_i)
	
	ans = "#{user_calc[0]}., #{user_calc[2]}, #{user_calc[4]}", ans
	
	answers << ans
	p answers
	
end

exit!

# For question 5, I was unable to return calculations performed. The closest 
# I was able to get before running out of time was a return of an array of 
# everything entered. Consequently, did not have time for question 6.


