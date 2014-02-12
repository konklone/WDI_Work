var xmasBullshit = ["A Partridge in a Pear Tree", "Turtle Doves", "French Hens", "Calling Birds", "Golden Rings", "Geese a Laying", "Swans a Swimming", "Maids a Milking", "Ladies Dancing", "Lords a Leaping", "Pipers Piping", "Drummers Drumming" ]

function printLyrics(n) {
  if (n == 1) {
    return xmasBullshit[n-1]
  } else {
    return n + " " + xmasBullshit[n-1] + "\n" + printLyrics(n-1);
  }
}

function printSong(n) {
  return "On the " + n + " day of Christmas\nmy true love gave to me:\n" + printLyrics(n);
}
