
require_relative "./input.rb"

def get_ethnicity(user)
user_input = read_string("Are you of Aboriginal, Torres Straight Islander or Maori descent? yes or not")
print ">"
valid_input = false 
points_ethnicity = 0

until valid_input 
  if user_input == "yes"
    valid_input = true 
    points_ethnicity  += 2
  elsif user_input == "no"
    valid_input = true 
    points_ethnicity = 0
  else 
    puts "Please answer yes or no"
    puts "you entered #{user_input}" 
    user_input = read_string("Are you of Aboriginal, Torres Straight Islander or Maori descent? yes or not")
    end 
  end
    user[:ethnicity] = user_input 
    user[:points_total] += points_ethnicity 
  return user 
end 

