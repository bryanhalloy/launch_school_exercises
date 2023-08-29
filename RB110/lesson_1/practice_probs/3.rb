ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

a = ages.filter do |_,v|
  v < 100
end

p a

p ages.keep_if { |_,v| v < 100 }

ages.select! {|_,v| v < 100 }
p ages

