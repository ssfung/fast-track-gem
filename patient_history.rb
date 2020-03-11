# require 'csv'
# csv_text = File.read('patient_data.csv')
# csv = CSV.parse(csv_text, headers:true)
 
# def patient_look_up
# puts "which patient would you like to look up?"
# print = ">"
# patient_search =gets.chomp.downcase    

# found_patient = []
# csv.each do |row|
# patient = row.to_hash
# if patient_search == patient['name']
# end 
# end 

# end 
# patient_look_up

# def view_all
# end 

# def delete_patient
# end 

# def menu
# puts "1. Look up all patient history" 
# puts "2. Search for a patient history"
# puts "3. Delete patient history"
# puts "4. Exit"
# puts "Please chose one option from the following menu:"
# user_selection = gets.chomp.to_i 
# print ">"
# return user_selection
# end

# input = menu 
#     case input
#     when 1 
      # view_all 
#     when 2 
      # patient_look_up
#     when 3
      # delete_patient 
#     when 4
#     exit
#     else 
#    puts "Please choose an option from 1-4 only"
# end
  