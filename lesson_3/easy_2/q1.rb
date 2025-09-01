# In this hash of people and their age,

ages = { "Herman" => 32, "Lily" => 30,
         "Grandpa" => 402, "Eddie" => 10 }

# see if "Spot" is present.

p ages["Spot"] == true

p ages.include?("Spot")

# Hash#key?, Hash#has_key?, and Hash#member?
# are all aliases for Hash#include?.
