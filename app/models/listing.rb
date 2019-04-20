class Listing < ApplicationRecord
  #using the foreign key "breed_id"
  belongs_to :breed
  
  #make a list of named key value pairs 
  # in an enum --> useful for when values
  # must be something in particular
  enum sex: { female:0, male:1 }

  #when we pass through 'female' in the listing
  # it saves

  #validates makes sure that data is entered
  #sets required field with the rule of (presence).
  #there are many different built in validation rules
  validates :title, :breed_id, :sex, :price, :deposit, :date_of_birth, presence: true
  


end
