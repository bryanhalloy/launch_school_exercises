contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

# Expected output:
#  {
#    "Joe Smith"=>{:email=>"joe@email.com", :address=>"123 Main st.", :phone=>"555-123-4567"},
#    "Sally Johnson"=>{:email=>"sally@email.com", :address=>"404 Not Found Dr.",  :phone=>"123-234-3454"}
#  }


# ------------

# Manually create a bridge between the two data sets. We could do this programattically using a fuzzy comparison or similar, but not important now
bridge_hash = {"Joe Smith" => 0,  "Sally Johnson" => 1}

# for each entry in the contacts hash
contacts.map do |nm,ci|
  # get index from the bridge
  index_pos = bridge_hash[nm]
  contacts[nm] = {email: contact_data[index_pos][0],
    address: contact_data[index_pos][1],
    phone: contact_data[index_pos][2]}
end

puts contacts