class Gladiator
  attr_accessor :name, :meat, :butcher_shop, :last_loser
  def initialize(name)
    @name = name
    @meat = []
    @butcher_shop = []
    @last_loser
  end

  def add_fresh_meat(meat_product)
    if @meat.count == 20
      raise "NO MORE MEAT"
    else
      @meat << meat_product
    end
  end

  def are_you_there?(meatwad)
    @meat.each do |meat_product|
      if meat_product[:name] == meatwad
        return true
      end
    end
    false
  end

  def round_one_fight!
    @butcher_shop = @meat.sample(2)
  end

  def u_guise_haz_entertained?
    entertained = false  
    @butcher_shop.each do |meat_product|
      if meat_product[:name] == "Maximus"
        entertained = true
      end
    end
    entertained
  end
end