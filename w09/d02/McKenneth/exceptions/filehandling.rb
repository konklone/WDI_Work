require 'pry'

def print_file( file_name )
  begin
    file_path = file_name + ".txt"
    f = File.new(file_path, "r")

    while line = f.readline
      puts line
    end
    # if there is an error the file never closes
    # f.close
  rescue EOFError => error
    # binding.pry
    puts "FILES DONE"
  rescue Errno::ENOENT => error
    puts "File does not existo"
  ensure
    # f.close
    f.close if !f.nil?
  end
end

print "Enter the file name: "
file_name = gets.chomp

print_file file_name