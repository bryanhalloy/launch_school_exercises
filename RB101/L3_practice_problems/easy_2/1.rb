ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

p !!ages.assoc("Spot")
p ages.any?("Spot")
p ages.has_key?("Spot")
p ages.key?("Spot")
p ages.include?('Spot')
p ages.member?('Spot')


