require 'pry'

def save_as( fname, contents )
  if File.exists? fname
    print "File exists, overwrite? [y/n] "
    return if gets.chomp != "y"
  end

  f = File.open fname, "w+"
  f.write contents
  f.close
end

f = File.new "seuss.txt", "r"
text = f.read
f.close

sam = /(i am sam)/i
sams = text.scan(sam)
sams_count = sams.count

sam_i_am = /(sam-i-am)/i
text.gsub(sam_i_am, "Sammy Jam")
f.close

places = []
begin_with = /(in a\s\w+)|(with a\s\w+)|(on a\s\w+)/i

places = text.scan(begin_with)
remove = /(in a\s)|(with a\s)|(on a\s)/i
places.map! do |l|
  l.map! { |string| string.gsub(remove, "") unless string.nil? }
  l.compact
end
places.uniq!

binding.pry