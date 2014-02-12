require 'pry'

def print_file( file_name )
  begin
    file_path = file_name + ".txt"
    f = File.new(file_path, "r")

    while line = f.readline
      puts line
    end

  rescue EOFError => error
    puts "----file finished"
    binding.pry
  rescue Errno::ENOENT => error
    puts "File does not exist"
  ensure
    f.close if !f.nil?
  end
end


print "Enter the file name: "
file_name = gets.chomp

print_file file_name