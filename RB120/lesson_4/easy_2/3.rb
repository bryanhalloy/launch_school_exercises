module Taste
  def flavor(flavor)
    puts "#{flavor}"
  end
end

class Orange
  include Taste
end

class HotSauce
  include Taste
end

p Orange.ancestors
# How do you find where Ruby will look for a method when that method is called? 
# by invoking calling_object.class.ancestors. 
  
  
# How can you find an object's ancestors?
# by invoking calling_object.class.ancestors. 


# # What is the lookup chain for Orange and HotSauce?
# Orange
# Taste
# Object
# Kernel
# BasicObject