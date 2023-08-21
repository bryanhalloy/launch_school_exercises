title = "Flintstone Family Members"

avail_width = 40
margin = (40 - title.length) / 2

margin.times do
  title.prepend(' ')
  title.concat(' ')
end

p title
p title.center(40)

