def get_family(user)
system 'clear'
  family_points = 0
  repeat = true
  while repeat
  puts "Have either of your parents, or any of your brothers or sisters been diagnosed with diabetes (type 1 or type 2)? "
  puts "yes or No"
  print ">"
  user_input = gets.chomp.to_s.downcase

  if user_input == "yes"
    family_points = 3
    repeat = false 
  elsif user_input == "no"
    family_points = 0
    repeat = false 
  else 
    puts "Wrong user input"
  end 
  end
  return user 
  user[:points_total] += family_points
 
end 




