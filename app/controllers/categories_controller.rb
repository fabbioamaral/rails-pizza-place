class CategoriesController < ApplicationController
    def index
        @categories = Category.all    
    #     if @categories
    #         render json: { status: "SUCCESS", message: "Fetched all product categories successfully!", data: @categories }, status: :ok
    #     else
    #         render json: @categories.errors, status: :bad_request
    #     end
    # end
    end
end
