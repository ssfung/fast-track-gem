# frozen_string_literal: true

require_relative './input.rb'

module Lifestyle
  def self.exercise(user)
    exercise_points = 0
    repeat = true
    while repeat
      exercise = read_string('On average, would you say you do at least 2.5 hours of physical activity per week (for example, 30 minutes a day on 5 or more days a week)? yes or no')

      if exercise == 'yes'
        exercise_points = 0
        repeat = false
      elsif exercise == 'no'
        exercise_points = 1
        repeat = false
      else
        puts 'Wrong user input'
        end
      end
    user[:points_total] += exercise_points
    user
  end

  def self.diet(user)
    food_points = 0
    repeat = true
    while repeat
      food = read_string('Do you eat fruit and vegetables everyday? yes or no')

      if food == 'yes'
        food_points = 0
        repeat = false
      elsif food == 'no'
        food_points = 1
        repeat = false
      else
        puts 'Wrong user input'
      end
    end
    user[:points_total] += food_points
    user
  end

  def self.blood_pressure(user)
    bp_points = 0
    repeat = true
    while repeat

      bp = read_string('Are you currently taking medication for high blood pressure? yes or no')

      if bp == 'yes'
        bp_points = 6
        repeat = false
      elsif bp == 'no'
        bp_points = 0
        repeat = false
      else
        puts 'Wrong user input'
      end
    end
    user[:points_total] += bp_points
    user
  end

  def self.smoking(user)
    repeat = true
    smoke_points = 0
    while repeat
      smokes = read_string('Do you currently smoke cigarettes or any other tobacco products on a daily basis? yes or no ')

      if smokes == 'yes'
        smoke_points = 2
        repeat = false
      elsif smokes == 'no'
        smoke_points = 0
        repeat = false
      else
        puts 'Wrong user input'
        end
    end
    user[:points_total] += smoke_points
    user
    end
end
