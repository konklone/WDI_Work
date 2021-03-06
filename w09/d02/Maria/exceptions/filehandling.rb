require 'pry'

def print_file( file_name )
  begin
  file_path = file_name + ".txt"
  f = File.new(file_path, "r")

  while line = f.readline
    puts line
  end

rescue EOFError => error
  puts "-------FIN-------"
rescue Errno::ENOENT => error
  puts "file does not exist..."
rescue
  puts "Error: failed."
ensure
  f.close if !f.nil?
  end
end


print "Enter the file name: "
file_name = gets.chomp

print_file file_name