require_relative "./age_group"
require_relative "./Gender"
require_relative "./ethnicity"
require_relative "./birth_place"
require_relative "./family"
require_relative "./glucose"
require_relative "./lifestyle"
require_relative "./waist_measurement"
require "colorize"

def ausdrisk_test 
user = {
  gender: nil,
  ethnicity: nil,
  points_total: 0,
}

user = age_group(user) 
user = get_gender(user)
user = get_ethnicity(user)
# user = get_destination(user)
# user = get_family(user)
# user = get_glucose(user)
# user = Lifestyle.diet(user)
# user = Lifestyle.exercise(user)
# user = Lifestyle.blood_pressure(user)
# user = Lifestyle.smoking(user)
# result = waist_measurement(user)

if user[:points_total] < 5  
  puts "low risk, approximately 1 in 100 will have diabetes".colorize(:green)
  elsif user[:points_total] > 6 && user[:points_total] <=11
  puts "intermediate risk".colorize(:orange)
  else user[:points_total] > 12
  puts "high risk".colorize(:red)
  end 
  return user 

puts "what is your name?"
print ">"
name = gets.chomp 



end 


ausdrisk_test





