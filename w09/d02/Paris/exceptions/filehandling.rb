require 'pry'

def print_file( file_name )
  begin
    file_path = file_name + ".txt"
    f = File.new(file_path, "r")

    while line = f.readline
      puts line
    end

    f.close
  rescue EOFError => error
    # binding.pry
    puts "---Fin---"
    # we didn't close the file b/c of the skipping. ensure will make sure f.close is run. 
    rescue Errno::ENOENT => error
    puts "File does not exist..."
  ensure
    f.close if !f.nil?
    # add an end when you add a begin.
  end
end


print "Enter the file name: "
file_name = gets.chomp

print_file file_name