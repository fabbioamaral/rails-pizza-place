module Api
    module V1
       class CategoriesController < ApplicationController

        # GET ALL
        def index
            categories = Category.all

            if categories
                render json: { status: "SUCCESS", message: "Fetched all product categories successfully!", data: categories }, status: :ok
            else
                render json: categories.errors, status: :bad_request
            end
        end

        # GET BY ID
        def show
            category = Category.find(params[:id])

            if category
                render json: { data: category }, state: :ok
            else
                render json: {message: "Product Category could not be found"}, status: :bad_request

            end
        end

        # POST
        def create
            category = Category.new(category_params)

            if category.save
                render json: { status: "SUCCESS", message: "Product Category was created successfully!", data: category  }, status: :created
            else
                render json: category.errors, status: :unprocessable_entity
            end
        end

        # DELETE
        def destroy
            category = Category.find(params[:id])

            if category.destroy!
                render json: {message: "Product Category was deleted successfully!"}, status: :ok
            else
                render json: {message: "Product Category does not exist!"}, status: :bad_request
            end
        end

        # UPDATE
        def update
            category = Category.find(params[:id])

            if category.update!(category_params)
                render json: { message: "Product Category was updated successfully!", data: category }, status: :ok
            else
                render json: { message: "Product Category could not be updated." }, status: :unprocessable_entity
            end
        end

        private

        def category_params
            params.require(:category).permit(:name)
        end

       end
    end
end