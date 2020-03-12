def get_glucose(user)
  system 'clear'
  glucose_points = 0
  repeat = true
  while repeat
    puts "Have you ever been found to have high blood glucose
    (sugar) (for example, in a health examination,
    during an illness, during pregnancy)? yes or no"
    print ">"
    user_input = gets.chomp.to_s.downcase
    if user_input == "yes"
      glucose_points = 6
      repeat = false
    elsif user_input == "no"
      glucose_points = 0
      repeat = false
    else 
      puts "Wrong user input"
    end
    # user[:points_total] = (glucose_points + user[:points_total])  
  end
  user[:points_total] += glucose_points
  return user
end 


 



