class Breed < ApplicationRecord
    has_many :listings
    #A breed can have many listings,
    #there can be many anaconda listings for example.

    #enum --> a set of named key value pairs
    
end
