require 'pry'

class Hand
  def initialize(cards)
    @cards = cards
  end

  def values
    array_of_card_values = []
    
    @cards.each do |card|
      #take the first letter, in case it is "As"
      value = card[0]

      #should use case
      if value == "A"
        array_of_card_values << 1
      elsif value == "T"
        array_of_card_values << 10
      elsif value == "J"
        array_of_card_values << 11
      elsif value =="Q"
        array_of_card_values << 12
      elsif value == "K"
        array_of_card_values << 13
      else
        array_of_card_values << value.to_i
      end
    end
    
    return array_of_card_values
  end

  #get an array of which suits.
  def suits
    my_card_array = Array.new

    @cards.each do |card|
      my_card_array << card[1]
    end
    
    return my_card_array
  end

  #return true if values of cards are sequential.
  def straight?
    ordered_values = values.sort
    
    is_straight = true
    
    ordered_values.each_with_index do |value, index| 
      if (index > 0) && (value != (ordered_values[index - 1] + 1)) 
          is_straight = false
      end
    end

    return is_straight
  end

  #return true if all cards are the same, false if there are multiple suits.
  def flush?
    suits.uniq.length == 1
  end

  def full_house?
    ordered_values = values.sort
    if values.count(ordered_values[0]) == 2
      if values.count(ordered_values[-1]) == 3
        true
      end
    elsif values.count(ordered_values[-1]) == 2
      if values.count(ordered_values[0]) == 3
        true
      end
    else
      false
    end
  end

  def four_of_a_kind?
    ordered_values = values.sort
    if ordered_values[0] == ordered_values[1] && ordered_values[1] == ordered_values[2] && ordered_values[2] == ordered_values[3]
      true
    elsif ordered_values[1] == ordered_values[2] && ordered_values[2] == ordered_values[3] && ordered_values[3] == ordered_values[4]
      true
    else
      false
    end
  end

  def best_hand
    ordered_values = values.sort
    
    is_straight = true
    ordered_values.each_with_index do |value, index| 
      if index > 0
        if value != (ordered_values[index - 1] + 1)
          is_straight = false
        end
      end
    end
    
    is_flush = true
    suits.each_with_index do |suit, index| 
      if index > 0
        if suit != (suits[index - 1])
          is_flush = false
        end
      end
    end

    if is_straight && is_flush
      "Straight Flush"
    elsif four_of_a_kind?
      "Four of a Kind"
    elsif full_house?
      "Full House"
    elsif flush?
      "Flush"
    elsif straight?
      "Straight"
    else
      "Not much"
    end
  end

end



