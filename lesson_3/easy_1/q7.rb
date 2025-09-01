# If we build an array like this:

flintstones = ["Fred", "Wilma"]
flintstones << ["Barney", "Betty"]
flintstones << ["BamBam", "Pebbles"]

# We will end up with a nested array. 

# How could you "un-nest" this array?
flintstones = flintstones.flatten
p flintstones
