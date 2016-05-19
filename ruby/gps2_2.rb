# Make a blank hash and assign it to create a list method
# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # Set default quantity
  # assign the quantity to the food item
  # print the list to the console [can you use one of your other methods here?]
# output: hash with key as item and value as quantity

# Method to add an item to a list
# input: list and new item name and optional quantity
# steps: take item given and add to list
      #IF quantity is given
        #assign quantitiy to item
      #ELSE
        #assign default quantity
# output: modified hash of food list

# Method to remove an item from the list
# input: list and item to remove
# steps: searches for item in list
        #IF item is found
          #Delete item from list
        #ELSE
          #Print error message
# output: modified hash of food list

# Method to update the quantity of an item
# input: list and item to update and new quantity
# steps:  searches for item in list
        #IF item is found
          #Update quantity of item
        #ELSE
          #Print error message
# output: modified hash

# Method to print a list and make it look pretty
# input: list
# steps: for each item in list
          # add to a string that states item name and quantity
# output: string with name and quantity

DEFAULT_VALUE = 1

def create_list(items)
  seperated_items = items.split(" ")
  grocery_list = {}
  seperated_items.each do |item|
    grocery_list[item] = DEFAULT_VALUE
  end
  return grocery_list
end

def add_item!(list, item, quantity = DEFAULT_VALUE)
  list[item] = quantity
  
  return list
end


def remove_item!(list, item)
  if list.has_key?(item)
    list = list.delete(item)
  else
    p "Error - Key not found."
  end
  
  return list
end

def update_item!(list, item, quantity = DEFAULT_VALUE)
  if list.has_key?(item)
    list = list.update(item => quantity)
  else
    p "Error - Key not found."
  end
  
  return list
end

def print_list(our_list)
  our_list.each do |item, quantity|
    puts "You have #{quantity} #{item}."
  end
end


our_list = create_list("Apples Ramen")
add_item!(our_list, "Lemonade", 2)
add_item!(our_list, "Tomatoes", 3)
add_item!(our_list, "Onions")
add_item!(our_list, "Ice Cream", 4)
remove_item!(our_list, "Lemonade")
update_item!(our_list, "Ice Cream", 1)
print_list(our_list)


# Before this exercise, I was a litle iffy on how to use psuedocode. During this, 
# the most important thing I learned was a good layout that I can use in psuedocode.
# i.e., the objective, input, steps, and output. That will help me immensely in 
# psuedocode'ing going forward.

# Honestly, the thought of using arrays never even passed into our heads. I'm not
# sure exactly how they would be used. Perhaps two arrays, one for items and one for
# quantities. I don't know if I can see a benefit to using arrays in this exercise. 
# Hash's just seem to make it so much easier and simplified. 

# A method returns the content of the method applied to the argument.

# You can pass any data type into a method. Strings, booleans, integers.

# You can pass information in between methods using return, and then calling the return data.

# To me, the most challenging concept in this was exactly what we just addressed, sharing 
# information between methods. I had no idea how we would do that when we started. Luckily,
# we were able to figure it out, thanks in large part to my partner's knowledge. Definitely
# a rewarding challenge. 