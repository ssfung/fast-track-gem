


def birth_place_menu
  puts "1. Australia"
  puts "2. Asia (including the Indian sub-continent), Middle East, North Africa, Southern Europe"
  puts "3. Other"

  puts "Where were you born?"
  print ">"
  user_input = gets.chomp.to_i
  return user_input 
end 

def get_destination(user)
    points_birth_place = 0
    case birth_place_menu()
      when 1 
      points_birth_place += 0
      when 2 
      points_birth_place += 2
      when 3
      points_birth_place += 0
      else 
      puts "Please choose an option from 1-3 only"
      return birth_place_menu
    end 
    user[:points_total] = (points_birth_place + user[:points_total])
    return user 
end 
