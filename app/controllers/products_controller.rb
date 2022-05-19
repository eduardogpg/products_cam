class ProductsController < ApplicationController
    before_action :set_product, only: [:edit, :update]
    
    def new
    end

    def create
        @product = Product.create product_params
        redirect_to @product.place.region
    end

    def edit
    end

    def update
    end

    private

    def product_params
        params.require(:product).permit(:name, :description, :serial, :place_id)
    end

    def set_product
        @product = Product.find params[:id]
    end

end
