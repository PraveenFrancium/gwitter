class HotelController < ApplicationController
	def index
        @hotels = Hotel.all
    end

    def show
    	@hotel = Hotel.all
    end


end
