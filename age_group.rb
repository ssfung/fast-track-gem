# frozen_string_literal: true

require_relative './input.rb'

def age_group(user)
  age_points = 0
  age = read_integer('How old are you?')

  if age < 34
    age_points += 0
  elsif age > 35 && age <= 44
    age_points += 2
  elsif age > 45 && age <= 54
    age_points += 4
  elsif age > 55 && age <= 64
    age_points += 6
  elsif age > 65
    age_points += 8
  else
    puts 'Wrong user input'
    age = read_integer('How old are you?')
    end
  user[:points_total] += age_points
  user
end
