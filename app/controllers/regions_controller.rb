class RegionsController < ApplicationController
    before_action :set_place, only: [:show]
    
    def index
        @regions = Region.all
    end

    def show
        @places = @region.places
    end

    private

    def set_place
        @region = Region.find params[:id]
    end

end
