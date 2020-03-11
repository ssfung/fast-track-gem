def get_glucose(user)
  puts "Have you ever been found to have high blood glucose
  (sugar) (for example, in a health examination,
  during an illness, during pregnancy)? yes or no"
  print ">"
  user_input = gets.chomp.to_s.downcase
  glucose_points = 0
  if user_input == "yes"
    glucose_points = 6
  elsif user_input == "no"
    glucose_points = 0
  else 
    puts "Wrong user input"
    glucose_points = get_glucose(user)
  end
  user[:points_total] += glucose_points
  # user[:points_total] = (glucose_points + user[:points_total])  
  return user
end 


 



