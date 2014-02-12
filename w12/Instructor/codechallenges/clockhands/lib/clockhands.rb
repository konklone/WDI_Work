def angle_between_hands(hours, minutes)
  angle = (hour_hand_angle(hours, minutes) - minute_hand_angle(minutes)).abs
  [angle, 360 - angle].min
end

def hour_hand_angle(hours, minutes)
  (60 * hours + minutes) / 2
end

def minute_hand_angle(minutes)
  6 * minutes
end