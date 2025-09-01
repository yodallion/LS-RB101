# Show two different ways to put the expected
# "Four score and " in front of the following string.

famous_words = "seven years ago..."

"Four score and " + famous_words

"Four score and ".concat(famous_words)

"Four score and " << famous_words

famous_words.prepend("Four score and ")
