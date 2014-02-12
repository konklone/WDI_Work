class Score < ActiveRecord::Base
   
  belongs_to :judge  
  validates :ranking 


  def ranking 
    score.ranking 
  end 

end 
