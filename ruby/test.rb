def encrypt(str)
    entry = str.split('')
    entry.each do |letters|
    	letters == letters.next!
    end
    entry.join
end

def decrypt(str)
	alphabet = ('a'..'z').to_a
  str = str.split('')
  new_str = str.map do |x|
    next ' ' unless alphabet.include?(x)
    new_letter = alphabet[(alphabet.index(x)-1)%alphabet.length]
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