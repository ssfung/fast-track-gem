require 'csv'

def patient_look_up(patients_array)
  puts "which patient would you like to look up?"
  print = ">"
  patient_search =gets.chomp.downcase
  found_patient = nil
  patients_array.each do |patient|
    if patient_search == patient["name"]
      found_patient = patient
    end
  end
  return found_patient
end 

def read_csv(csv)
  arr = []
  csv.each do |row|
    patient = row.to_hash
    arr << patient
  end
  return arr
end 

def update_patient(patients_array)
  puts "which patient would you like to look up?"
  print = ">"
  patient_search = gets.chomp.downcase
  found_patient = nil 
   patients_array.each do |patient|
    if patient_search == patient["name"]
      found_patient = patient
    end 
  end 
  puts "what was the patient's new score? "
  new_score = gets.chomp
  print ">"
  patients_array.each do |patient|
      if patient_search == patient["name"]
      found_patient = patient
      patient['score'] = new_score
    end
  
end 
 
puts patients_array 
end 

def menu_patient 
  while true
    csv_text = File.read("patient_data.csv")
    csv = CSV.parse(csv_text, headers:true)
    patients_array = read_csv(csv)
    puts "1. Look up all patient history" 
    puts "2. Update patient "
    puts "3. Delete patient"
    puts "4. Exit"
    puts "Please chose one option from the following menu:"
    user_selection = gets.chomp.to_i 
    print ">"
    case user_selection
    when 1 
      p patient_look_up(patients_array)
    when 2 
      p update_patient(patients_array)
    when 3
      delete_patient 
    when 4
      exit
    else 
      puts "Please choose an option from 1-4 only"
    end 
  end 
end 

menu_patient 




# end 