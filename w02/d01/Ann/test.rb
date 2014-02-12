users = {
  "Peter" => {
    :github => "peterylai",
    :favorite_numbers => [12, 42, 75],
  },
  "PJ" => {
    :github => "h4w5",
    :favorite_numbers => [8, 12, 24],
  },
  "Jeff" => {
    :github => "jkonowitch",
    :favorite_numbers => [12, 14, 85],
  },
}

puts (users["PJ"][:favorite_numbers] | users["Peter"][:favorite_numbers] | users["Jeff"][:favorite_numbers]).sort
puts users["Peter"][:favorite_numbers][1].to_s 