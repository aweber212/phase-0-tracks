def encrypt(str)
    letters = str.split('')
    letters.each do |letter|
    	letter == letter.next!
    end
    letters.join
end

def decrypt(str)
	letters = ('a'..'z').to_a
  str = str.split('')
  new_str = str.map do |x|
    next ' ' unless letters.include?(x)
    new_letter = letters[(letters.index(x)-1)%letters.length]
    new_letter
  end
  return new_str.join
end



puts "Hello, agent. Would you like to decrypt or encrypt a password?"
action = gets.chomp

puts "Please enter the password."
password = gets.chomp

if action == "decrypt"
    puts "Here is your decrypted password"
    puts decrypt(password)
elsif action == "encrypt"
    puts "Here is your encrypted password"
    p encrypt(password)
end