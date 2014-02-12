require 'pry'

def print_file( file_name )
   begin ### TRY THIS
      file_path = file_name + ".txt"
      f = File.new(file_path, "r")

      while line = f.readline
         puts line
      end

      f.close
   # SYNTAX: ErrorClass => error_name
   rescue EOFError => error ### IF ERROR DO THIS
      puts "---We Out---"
   rescue Errno::ENOENT => error ### OR THIS
      puts "---File Does Not Exist---"
   ensure ### ALWAYS END WITH THIS
      # File close if the file exists
      f.close if !f.nil?
   end
end


print "Enter the file name: "
file_name = gets.chomp

print_file file_name