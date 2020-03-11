require_relative "./input.rb"


def age_group(user)
age_points = 0
age = read_integer('How old are you?')  
valid_input = false 

until valid_input == true 
if age < 34
  age_points += 0 
  valid_input = true 
  elsif age >35 && age <=44
    age_points += 2
    valid_input = true 
  elsif age >45 && age <= 54
    age_points +=4
    valid_input = true 
  elsif age >55 && age <=64
    age_points +=6
    valid_input = true 
  elsif age > 65
    age_points +=8
    valid_input = true 
  else
  puts "Wrong user input"
    age = read_integer('How old are you?') 
  end
  user[:points_total] += age_points
  return user 
end
end 

