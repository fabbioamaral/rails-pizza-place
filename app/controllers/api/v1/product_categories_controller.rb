module Api
    module V1
       class ProductCategoriesController < ApplicationController

        // GET ALL
        def index
            product_categories = ProductCategory.all

            if product_categories
                render json: { status: "SUCCESS", message: "Fetched all product categories successfully!", data: product_categories }, status: :ok
            else
                render json: product_categories.errors, status: :bad_request
            end
        end

        // GET BY ID
        def show
            product_category = ProductCategory.find(params[:id])

            if product_category
                render json: { data: product_category }, state: :ok
            else
                render json: {message: "Product Category could not be found"}, status: :bad_request

            end
        end

        // POST
        def create
            product_category = ProductCategory.new(product_category_params)

            if product_category.save
                render json: { status: "SUCCESS", message: "Product Category was created successfully!", data: product_category  }, status: :created
            else
                render json: product_category.errors, status: :unprocessable_entity
            end
        end

        // DELETE
        def destroy
            product_category = ProductCategory.find(params[:id])

            if product_category.destroy!
                render json: {message: "Product Category was deleted successfully!"}, status: :ok
            else
                render json: {message: "Product Category does not exist!"}, status: :bad_request
            end
        end

        // UPDATE
        def update
            product_category = ProductCategory.find(params[:id])

            if product_category.update!(product_category_params)
                render json: { message: "Product Category was updated successfully!", data: product_category }, status: :ok
            else
                render json: { message: "Product Category could not be updated." }, status: :unprocessable_entity
            end
        end

        private

        def product_category_params
            params.require(:product_category).permit(:name)
        end

       end
    end
end