require 'pry'

def print_file( file_name )
  begin
    file_path = file_name + ".csv"
    f = File.new(file_path, "r")
    d = 0

    output = File.open( "outputfile.yml", "w" )

    f.each do |line|
      if line.chomp.empty?
      elsif line.match(/^>+/) || line.match(/^\s+/)
        # if line.include?("PANEM CENSUS ROLL")
        #   line_break = line.split("|")
        #   puts line_break[2].strip!
        # end
        match = line.match(/District\s(\d*)/)
        if !match.nil? && match[1] != d
          # binding.pry
          output << "# DISTRICT " + d.to_s + " Ends\n"
          d = match[1]
        end
      else
        people = line.split("|")
        regex = /([A-Z]+)\W+([A-Z]+)\s+(T:\d)?\D+(\d+)\s+(M|F)/

        people.each do |person|
          match = person.chomp.match(regex)

          district = "cap"
                case d 
                when "01"
                  district = "one"
                when "02"
                  district = "two"
                when "03"
                  district = "three"
                when "04"
                  district = "four"
                when "05"
                  district = "five"
                when "06"
                  district = "six"
                when "07"
                  district = "seven"
                when "08"
                  district = "eight"
                when "09"
                  district = "nine"
                when "10"
                  district = "ten"
                when "11"
                  district = "eleven"
                when "12"
                  district = "twelve"
                end

          unless match.nil?
            if match[3].nil?
              if district != "cap" && match[4].to_i <= 18 && match[4].to_i >= 12
                tesserae = match[4].to_i - 11
                output << "Citizen.create(name: '" + match[2] + " " + match[1] + "', age: " + match[4] + ", gender: '" + match[5] + "' , tesserae: " + tesserae.to_s + ", district_id: " + district + ".id)\n"
              else
                output << "Citizen.create(name: '" + match[2] + " " + match[1] + "', age: " + match[4] + ", gender: '" + match[5] + "' , district_id: " + district + ".id)\n"
              end
            else
              if district != "cap" && match[4].to_i <= 18 && match[4].to_i >= 12
                tesserae = match[3][2].to_i + match[4].to_i - 11

                output << "Citizen.create(name: '" + match[2] + " " + match[1] + "', age: " + match[4] + ", gender: '" + match[5] + "' , tesserae: " + tesserae.to_s + ", district_id: " + district + ".id)\n"
              end
            end
          end
        end
      end
      # binding.pry
    end


  rescue EOFError => error
    #binding.pry
    puts "---Fin---"
  rescue Errno::ENOENT => error
    puts "File does not exist..."
  rescue => error
    puts "Error: failed... #{error.message}" 
  ensure
    f.close if !f.nil?
    output.close
  end
end


print "Enter the file name: "
file_name = gets.chomp

print_file file_name