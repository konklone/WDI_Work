require 'pry'

def print_file( file_name )
  begin
    file_path = file_name + ".txt"
    f = File.new(file_path, "r")

    while line = f.readline
      puts line
    end

  rescue
    puts "---Fin---"
  ensure #makes sure file closes
    f.close
  end
end


print "Enter the file name: "
file_name = gets.chomp

print_file file_name