def read_string(question)
puts question 
  print ">"
  user_input = gets.chomp
end

def read_integer(question)
  read_string(question).to_i
end
