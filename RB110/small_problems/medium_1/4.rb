def switch_results (n_switches)
  lights_on_arr = Array.new(n_switches, false)
  n_switches.times do |iter|
    lights_on_arr.each_with_index do |_is_on, index|
      if (index + 1) % (iter + 1) == 0
        lights_on_arr[index] = !lights_on_arr[index]
      end
    end
  end
  lights_on_numbers = []
  lights_on_arr.each_with_index do |val, index|
    lights_on_numbers << (index + 1) if val
  end
  lights_on_numbers

  
  
  
  
  # initializze array of siwtches, all off (false)
  # iterate once per set size
  #   mutate array based on multiple rule
  # select subset that is on
  # return array of switches that are ON
end





p switch_results(1000)
p switch_results(5) == [1, 4]
p switch_results(10) == [1, 4, 9]


# What is happening?
# you cycle throuhg the set of switches, each time toggling a different subset which are a multiple of the iteration you are on. 



