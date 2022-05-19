class PlacesController < ApplicationController
    before_action :set_place, only: [:show, :report]

    def index
        @places = Place.all.order('id DESC')
    end

    def show
        @products = @place.products
    end

    def report
    end

    private

    def set_place
        @place = Place.find params[:id]
    end
    
end
