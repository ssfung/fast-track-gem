require 'csv'
csv_text = File.read('patient_data.csv')

csv = CSV.parse(csv_text, headers=> true)

puts "which patient would you like to look up?"
print = ">"
patient_search =gets.chomp 