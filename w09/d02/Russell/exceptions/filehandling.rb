require 'pry'

def print_file( file_name )
  file_path = file_name + ".txt"
  f = File.new(file_path, "r")

  while line = f.readline
    puts line
  end

  f.close
end


print "Enter the file name: "
file_name = gets.chomp

print_file file_name