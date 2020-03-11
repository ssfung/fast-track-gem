def get_family(user)
  puts "Have either of your parents, or any of your brothers or sisters been diagnosed with diabetes (type 1 or type 2)? "
  puts "yes or No"
  print ">"
  user_input = gets.chomp.to_s.downcase

  if user_input == "yes"
    family_points = 3
  elsif user_input == "no"
    family_points = 0
  else 
    puts "Wrong user input"
    family_points = get_family(user)

  end 
  return user 
  return family_points
  user[:points_total] += family_points
end 

