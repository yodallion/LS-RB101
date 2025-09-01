# Describe the difference between '!' and '?' in Ruby.
# And explain what would happen in the following scenarios:

# 1. What is '!=' and where should you use it?
#    '!=' is the opposite of the '==' comparison operator.
#    It is used to test for inequality between values. It
#    can be used for control flow wherein something should
#    or should not happen if two values are not equal.

# 2. Put '!' before something, like '!user_name'.
#    Commonly known as the 'bang' operator, in Ruby this
#    returns a boolean 'true' or 'false' based on the
#    truthiness of the value it is called upon. Specifically,
#    it will return the opposite of the values truthiness.

# 3. Put '!' after something, like 'words.uniq!'.
#    This is meant to indicate that a given method will
#    mutate it's caller or arguments in some way. However,
#    not every mutating method ends with a '!'.

# 4. Put '?' before something.
#    This will return the character literal for any single
#    character that is preceded by it. ?5 = '5', ?a = 'a'.

# 5. Put '?' after something
#    This is usually seen at the end of a method and
#    indicates that the method will return either a 'true'
#    or 'false' object.

# 6. Put '!!' before something, like '!!user_name'.
#    Negates the result of a '!value' operator call by
#    calling '!' on the object twice. Ensures that '!'
#    is being called on a boolean value and will always
#    return the boolean equivalent of an objects value.
