flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]


flintstones_h = {}

flintstones.each_with_index do |v,i|
  flintstones_h[v] = i
end

p flintstones_h

