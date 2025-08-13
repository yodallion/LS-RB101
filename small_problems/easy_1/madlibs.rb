# Create a simple mad-lib program that prompts for a noun, a verb, 
# an adjective, and an adverb and injects those into a story that you create.

print "Enter a noun: "
noun = gets.chomp
print "Enter a verb: "
verb = gets.chomp
print "Enter an adjective: "
adjective = gets.chomp
print "Enter an adverb: "
adverb = gets.chomp
print "\n"
puts "They #{adverb} #{verb} the #{noun} for they were very #{adjective}!"
