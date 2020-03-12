require_relative "./age_group"
require_relative "./Gender"
require_relative "./ethnicity"
require_relative "./birth_place"
require_relative "./family"
require_relative "./glucose"
require_relative "./lifestyle"
require_relative "./waist_measurement"
require "colorize"
require "tty-prompt"
require "csv"

def add_data (patient_name, score)
  CSV.open("patient_data.csv","a") do |csv|
    csv << [patient_name, score]
  end 
end

def ausdrisk_test 
  prompt = TTY::Prompt.new
  prompt.ask('What is your name?')
  name = gets.chomp 


  user = {
    name: name, 
    gender: nil,
    ethnicity: nil,
    points_total: 0,
    
  }

  user = age_group(user) 
  user = get_gender(user)
  user = get_ethnicity(user)
  user = get_destination(user)
  user = get_family(user)
  user = get_glucose(user)
  user = Lifestyle.diet(user)
  user = Lifestyle.exercise(user)
  user = Lifestyle.blood_pressure(user)
  user = Lifestyle.smoking(user)
  result = waist_measurement(user)

  if user[:points_total] < 5  
    puts "low risk, approximately 1 in 100 will have diabetes".colorize(:green)
  elsif user[:points_total] > 6 && user[:points_total] <=11
    puts "intermediate risk".colorize(:purple)
  else user[:points_total] > 12
    puts "high risk".colorize(:red)
  end 
  
  add_data(user[:name], user[:points_total])
end

 
#   user = {
#     name: "ed", 
#     gender: 'male',
#     ethnicity: 'no',
#     points_total: 40,
    
#   }

# add_data(user[:name], user[:points_total])


# ausdrisk_test
# add_data



