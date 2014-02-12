var gifts = [
"A Partridge in a Pear Tree",
"2 Turtle Doves",
"3 French Hens",
"4 Calling Birds",
"5 Golden Rings",
"6 Geese a Laying",
"7 Swans a Swimming",
"8 Maids a Milking",
"9 Ladies Dancing",
"10 Lords a Leaping",
"11 Pipers Piping",
"12 Drummers Drumming"
]

function give(day) {
  if (day === 0) {
  } else {
    console.log(gifts[day - 1]);
    give(day - 1);
  }
}

function twelveDays (day){
  console.log(
    "On the "+ day + " day of Christmas\nmy true love gave to me:"
    );
  give(day);
}

twelveDays(2);

// give(5);
// give(12);
