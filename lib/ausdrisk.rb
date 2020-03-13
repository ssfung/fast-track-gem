# frozen_string_literal: true

require_relative './age_group'
require_relative './Gender'
require_relative './ethnicity'
require_relative './birth_place'
require_relative './family'
require_relative './glucose'
require_relative './lifestyle'
require_relative './waist_measurement'
require 'colorize'
require 'tty-prompt'
require 'csv'

def add_data(patient_name, score)
  CSV.open('patient_data.csv', 'a') do |csv|
    csv << [patient_name, score]
  end
end

def ausdrisk_test
  system 'clear'
  puts 'What is your name?'
  name = gets.chomp

  user = {
    name: name,
    gender: nil,
    ethnicity: nil,
    points_total: 0

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
    puts 'Low risk - You scored 6-11 points in the AUSDRISK. You may be at increased risk of type 2 diabetes. Improving your lifestyle may reduce your risk of type 2 diabetes'.colorize(:green)
  elsif user[:points_total] > 6 && user[:points_total] <= 11
    puts 'intermediate risk'.colorize(:blue)
  else user[:points_total] > 12
       puts "You scored 12 points or more in the AUSDRISK. You may have
undiagnosed type 2 diabetes or be at high risk of developing the
disease. Speak to your healthcare professional as soon as possible.". colorize(:red)
  end
  add_data(user[:name], user[:points_total])
end
