# Prompt user for name
# Split into words
	# Reverse array
# Join array
# Split into letters
	# Advance vowels to next vowel
	# Advance consoents to next consonent
# Join array 

exit_word = "exit"
name = ""

until name == exit_word

# I can't seem to get a loop in that would exit the program if "exit" is entered. I'm not sure why. 

	p "Welcome, agent. For your encypted alias, please enter your name."
	name = gets.chomp

	orig_name = name
	name = name.downcase
	
	def reverse(str)
		str = str.split (' ')
		str.reverse!
		str.join (' ')
	
	end
	
	def vowel_next(str)
	  vowels = ["a", "e", "i", "o", "u"]
	  str = str.split('')
	  str_new = str.map do |vowel|
	    if vowels.include?(vowel)
	      vowels.rotate(1)[vowels.index(vowel)]
	    else
	      vowel
	    end
	  end
	  str_new.join
	end
	
	def cons_next(str)
	  cons = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z"]
	  str = str.split('')
	  str_new = str.map do |con|
	    if cons.include?(con)
	      cons.rotate(1)[cons.index(con)]
	    else
	      con
	    end
	  end
	  str_new.join
	end
	
	name = reverse(name)
	name = vowel_next(name)
	name = cons_next(name)
	name = name.capitalize
	
	name_hash = {
		"#{orig_name}" => "#{name}"
	}
	
	name_hash.each do |orig_name, name| 
		puts "#{orig_name}, you're alias is #{name}!"
	end

end

exit!

# again, the exit! never occurs




