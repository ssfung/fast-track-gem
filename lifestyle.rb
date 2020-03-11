
require_relative "./input.rb"

module Lifestyle 
  def self.exercise(user)
    exercise = read_string("On average, would you say you do at least 2.5 hours of physical activity per week (for example, 30 minutes a day on 5 or more days a week)?") 
    exercise_points = 0
    if exercise == "yes"
      exercise_points = 0
    elsif exercise == "no"
      exercise_points = 1
    else 
      puts "Wrong user input"
      exercise_points = exercise  
    end 
    user[:points_total] += exercise_points
    return user
  end 
 


  def self.diet(user)
    food = read_string("Do you eat fruit and vegetables everyday?") 
    food_points = 0
    if food == "yes"
      food_points = 0
    elsif food == "no"
      food_points = 1
    else 
      puts "Wrong user input"
      food_points = diet 
    end 
    user[:points_total] += food_points
    return user
  end 


  def self.blood_pressure(user)
    bp = read_string("Are you currently taking medication for high blood pressure?") 
    bp_points = 0
    if bp == "yes"
      bp_points = 6
    elsif bp == "no"
      bp_points = 0
    else 
      puts "Wrong user input"
      bp_points = blood_pressure 
    end 
    user[:points_total] += bp_points
    return user 
  end 



  def self.smoking(user)
    smokes = read_string("Do you currently smoke cigarettes or any other tobacco products on a daily basis?") 
    smoke_points = 0
    if smokes == "yes"
      smoke_points = 2
    elsif smokes == "no"
      smoke_points = 0
    else 
      puts "Wrong user input"
    smoke_points = smoking
    end 
    user[:points_total] += smoke_points 
    return user 
  end 
end 
