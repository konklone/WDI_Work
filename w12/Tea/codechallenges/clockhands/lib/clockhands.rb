def angle_between_hands(hour, minute)
  angle = (hour * 30) + (minute * 6)
  if angle === 360
    0
  else
    angle
  end
end
