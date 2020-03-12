require_relative "./input.rb"



def get_gender(user)
system 'clear'
  sex = read_string("Are you male or female?") 
  valid_input = false 
  points_total = 0
  
  until valid_input
    if sex == "female" 
      valid_input = true 
      points_total = 0
    elsif sex == "male"
      valid_input = true 
      points_total += 3 
    else 
      puts "Please choose male or female"
      puts "you entered #{sex}"
      sex = read_string("Are you male or female?") 
    end
  end 
  user[:gender] = sex 
  user[:points_total] += points_total 
  return user
end

