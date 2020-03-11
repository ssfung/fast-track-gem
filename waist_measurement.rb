def get_waist_measurement
  puts 'Please measure your waist measurement taken  below the ribs usually at the level of the navel, and while standing'
  puts 'Waist measurement (in cm)'
  print '>'
  user_input = gets.chomp.to_i
end

def waist_measurement(user)
  waist_points = 0
  waist_measurement = get_waist_measurement
  if user[:gender] == 'female' && user[:ethnicity] == 'yes'
    if waist_measurement < 80
      waist_points += 0
    elsif waist_measurement > 80 && waist_measurement <= 90
      waist_points += 4
    else waist_measurement > 90
         waist_points += 7
    end
  elsif
  if user[:gender] == 'female' && user[:ethnicity] == 'no'
    if waist_measurement < 88
      waist_points += 0
    elsif waist_measurement > 88 && waist_measurement <= 100
      waist_points += 4
    else waist_measurement > 100
         waist_points += 7
    end
  elsif
  if user[:gender] == 'male' && user[:ethnicity] == 'no'
    if waist_measurement < 102
      waist_points += 0
    elsif waist_measurement > 102 && waist_measurement <= 110
      waist_points += 4
    else waist_measurement > 110
         waist_points += 7
    end
    if user[:gender] == 'male' && user[:ethnicity] == 'yes'
      if waist_measurement < 90
        waist_points += 0
      elsif waist_measurement > 90 && waist_measurement <= 100
        waist_points += 4
      else waist_measurement > 100
           waist_points += 7
      end
      user[:points_total] = (waist_points + user[:points_total])
    end
  end
  end
  end
  return user
end
