require_relative "./ausdrisk.rb"
require_relative "./patient_history.rb"
require_relative "./glucose_targets.rb"
require "artii"

$arter = Artii::Base.new




def menu
system 'clear'
puts $arter.asciify("DIABETES")
puts "1. AUSDRISK test"
puts " "
puts "2. View patient data"
puts " "
puts "3. View Diabetes targets"
puts " "
puts "4. Exit"
puts " "
puts "Please chose one option from the above menu:"
user_selection = gets.chomp.to_i 
print ">"
return user_selection
end

input = menu 
    case input
    when 1 
    ausdrisk_test
    when 2 
    menu_patient 
    when 3
    view_targets
    when 4
    exit
    else 
   puts "Please choose an option from 1-4 only"
end
  

