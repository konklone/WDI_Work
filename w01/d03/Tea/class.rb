#classes used to store data. get data by calling classes!

class TableMaking
    def add_tables 
      puts "OK WE GOT SOME TABLES HERE!"
    end
  end

  ikea = TableMaking.new

puts ikea.class
puts ikea.add_tables


#///

class TableMaking
    #####This is a class method
    def add_tables(color)
      @tables = color
    end
    ###### /end/ class method
    
    #####This is another class method
    def shout_out_out
      puts "WE GOT SOME #{@tables} TABLES HERE!"
      puts "AND WE GOT SOME #{@tables} CHAIRS TOO"
    end
    ###### /end/ class method
    
    #####This is another class method
    def sing_a_song
      puts "lalalalaa wooooo"
    end
    ###### /end/ class method

end

ikea = TableMaking.new

puts ikea.class







