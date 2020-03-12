require 'csv'
require "tty-prompt"


def update_data(patients)
    CSV.open("patient_data.csv","w") do |csv|
      csv << ["name","score"]
      patients.each do | patient|
        print "PATIENT: "
        p patient
        csv << patient.values
    end
  end
end




def patient_look_up(patients_array)
system 'clear'
while true
  puts "which patient would you like to look up?"
  print = ">"
  patient_search =gets.chomp.downcase
  found_patient = nil
  patients_array.each do |patient|
    if patient_search == patient["name"]
      return patient
    else 
    end
  end
    puts 'patient does not exist'
end 
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
system 'clear'
  puts "which patient would you like to look up?"
  patient_search = gets.chomp.downcase
  print = ">"
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
  update_data(patients_array)
end 
 

def delete_patient(patients_array)
puts "which patient would you like to delete?"
patient_search = gets.chomp
print = ">"
found_patient = nil 

  patients_array.each do |patient| 
    if patient_search == patient["name"]
    found_patient = patient
    patients_array.delete(found_patient)
    end 
  end 
    update_data(patients_array)
end 

def menu_patient 
system 'clear'
  while true
    csv_text = File.read("patient_data.csv")
    csv = CSV.parse(csv_text, headers:true)
    patients_array = read_csv(csv)

  choices = [
  {name: 'Look up all patient history', value:1},
  {name: 'Update Patient', value:2},
  {name: 'Delete patient', value:3},
  {name: 'Exit', value:4}
  ] 
prompt = TTY::Prompt.new
user_input = prompt.select("Select an action?", choices)
    case user_input 
    when 1 
      p patient_look_up(patients_array)
    when 2 
      p update_patient(patients_array)
    when 3
      delete_patient(patients_array)
    when 4
     exit 
    else 
      puts "Please choose an option from 1-4 only"
    end 
  end 
end 




