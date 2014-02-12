require 'pry'

def print_file( file_name )
  begin 
    file_path = file_name + ".txt"
    f = File.new(file_path, "r")

  while line = f.readline
    puts line
    #at end of doc get end of file errors 
  end

  f.close

    rescue EORError => error 
      #only rescues from end of file error 
      puts "--Fin--" 
    rescue Errno::ENOENT => error 
      puts "File does not exist!"
    ensure 
      f.close if !f.nil? 
    end 
end
 


print "Enter the file name: "
file_name = gets.chomp

print_file file_name