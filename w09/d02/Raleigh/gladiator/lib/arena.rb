class Arena
   def initialize(name)
      @name = name
      @gladiators = []
      @fight = []
   end

   def name
      @name
   end

   def gladiators
      @gladiators
   end

   def fighting
      @fight
   end

   def new_gladiator(name, weapon)
      if @gladiators.length < 20
         @gladiators.push({name: name, weapon: weapon})
      end
      @gladiators.last
   end

   def find(name)
      @gladiators.each do |gladiator|
         if gladiator[:name] == name
            return true
         else
            return false
         end
      end
   end

   def fight(gladiator)
      if fighting.length < 2
         @fight.push(gladiator)
      end
   end

   def winner
      if @fight[0][:name] == "Maximus" || @fight[1][:name] == "Maximus"
         "Maximus"
      elsif @fight[0][:weapon] == "Dragons" && @fight[1][:weapon] == "Short sword"
         @fight[0][:name]
      elsif @fight[0][:weapon] == "Short sword" && @fight[1][:weapon] == "Dragons"
         @fight[1][:name]
      elsif @fight[0][:weapon] == "Short sword" && @fight[1][:weapon] == "Club"
         @fight[0][:name]
      elsif @fight[0][:weapon] == "Club" && @fight[1][:weapon] == "Short sword"
         @fight[1][:name]
      elsif @fight[0][:weapon] == "Dragons" && @fight[1][:weapon] == "Club"
         @fight[1][:name]
      elsif @fight[0][:weapon] == "Club" && @fight[1][:weapon] == "Dragons"
         @fight[0][:name]
      else
         false
      end
   end

end