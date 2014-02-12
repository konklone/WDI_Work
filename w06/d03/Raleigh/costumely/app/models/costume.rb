class Costume < ActiveRecord::Base
   
   validates :name, :image, :presence => true
end