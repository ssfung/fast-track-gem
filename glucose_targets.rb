require 'terminal-table'

def view_targets
puts 'Normal Range' 
rows = []
rows << ['HBA1C', '<7%']
rows << ['random glucose test', '4-7.8 mmol/L']
table = Terminal::Table.new :rows => rows
table = Terminal::Table.new :headings => ['Name', 'Target'], :rows => rows
puts table 
end 
 