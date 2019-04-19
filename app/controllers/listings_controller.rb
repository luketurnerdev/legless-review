class ListingsController < ApplicationController
    #before action runs before anything else,
    #and it will look for a method called set_listing
    # BUT only run on these 4 methods using only keyword
    before_action :set_listing, only: [:show, :edit, :update, :destroy]

    def create
        #creates new listing
    end

    def update
        #updates the current listing
    end

    def index
        #shows all listings

        #Make an instance variable that has all 
        #listings from db

        @listings = Listing.all
    
    end

    def edit
        #shows the edit form
    end

    def destroy
        #deletes current listings

    end

    def new 
        #shows form for creating a new listing
        @listing = Listing.new
    end

    def show
        #view a single listing
    end

    #private makes set_listing only accessible inside the object
    
    private 

    def set_listing
        #access the params hash, and pick out 
        #a particular id. Assign this to a 
        # variable 'id'
        #then use this id to create a var of the
        # particular listing

        id = params[:id]
        @listing = Listing.find(id)
    end
end