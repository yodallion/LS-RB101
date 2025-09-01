# Here is a hash and a method meant to alter the value's
# stored in the hash. When the method is invoked on line 19,
# does the data stored in the 'munsters' change?

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

def mess_with_demographics(demo_hash)
  demo_hash.values.each do |family_member|
    family_member["age"] += 42
    family_member["gender"] = "other"
  end
end

mess_with_demographics(munsters)

# Yes, this is because 'hash[key] = value' is a mutating
# statement, despite looking like simple reassignment.
# When the 'munsters' hash is passed to the method through
# the 'demo_hash' parameter, the method is being given a
# reference to the original 'munsters' hash. This allows
# it to be mutated by the method.
