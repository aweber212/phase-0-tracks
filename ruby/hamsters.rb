puts "What is your hamster's name?"
name = gets.chomp

puts "On a scale of 1 to 10, how loud is #{name}?"
volume = gets.to_i

puts "What color is #{name}'s fur?"
fur = gets.chomp

puts "Is #{name} a good candidate for adoption?"
candidate = gets.chomp

puts "What is #{name}'s estimated age?"
age = gets.to_i
age = age > 0 ? age : nil

puts "The next hamster arriving is #{name}!" 
puts "#{name}'s fur color is #{fur}." 
puts "On a volume scale of 1 to 10, #{name} is a #{volume}." 
puts "#{name} is #{age} years old."
puts "Is #{name} a good candidate for adoption? #{candidate}."