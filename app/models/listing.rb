class Listing < ApplicationRecord
  #using the foreign key "breed_id"
  belongs_to :breed
  
  #make a list of named key value pairs 
  # in an enum --> useful for when values
  # must be something in particular
  enum sex: { female:0, male:1 }
  


end
