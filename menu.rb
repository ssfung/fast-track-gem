
# require_relative "./ausdrisk.rb"
# require_relative "./patient_history.rb"
require_relative "./glucose_targets.rb"

def menu
puts "1. AUSDRISK test"
puts "2. View patient history"
puts "3. Diabetes targets"
puts "4. Exit"
puts "Please chose one option from the following menu:."
user_selection = gets.chomp.to_i 
print ">"
end

user_selection = menu 
    case 
    when 1 
    # ausdrisk
    when 2 
    # patient_history
    when 3
    view_targets
    when 4
    Exit
    else 
   puts "Please choose an option from 1-4 only"
end
  

