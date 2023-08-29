ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

p ages.values.sum

ages_sum = 0
ages.each do |_,v|
  ages_sum += v
end

p ages_sum

p ages.values.inject(:+)


p ages.values.inject(0) {|run_total, v| run_total += v * 13 } 







p ages.keys

