module Api
    module V1
       class FlavourCategoriesController < ApplicationController

        # GET ALL
        def index
            flavour_categories = CategoryFlavour.all

            if flavour_categories
                render json: { status: "SUCCESS", message: "Fetched all flavour categories successfully!", data: flavour_categories }, status: :ok
            else
                render json: flavour_categories.errors, status: :bad_request
            end
        end

        # GET BY ID
        def show
            flavour_category = CategoryFlavour.find(params[:id])

            if flavour_category
                render json: { data: flavour_category }, state: :ok
            else
                render json: {message: "Flavour Category could not be found"}, status: :bad_request

            end
        end

        # POST
        def create
            flavour_category = CategoryFlavour.new(flavour_category_params)

            if flavour_category.save
                render json: { status: "SUCCESS", message: "Flavour Category was created successfully!", data: flavour_category  }, status: :created
            else
                render json: flavour_category.errors, status: :unprocessable_entity
            end
        end

        # DELETE
        def destroy
            flavour_category = CategoryFlavour.find(params[:id])

            if flavour_category.destroy!
                render json: {message: "Flavour Category was deleted successfully!"}, status: :ok
            else
                render json: {message: "Flavour Category does not exist!"}, status: :bad_request
            end
        end

        # UPDATE
        def update
            flavour_category = CategoryFlavour.find(params[:id])

            if flavour_category.update!(flavour_category_params)
                render json: { message: "Flavour Category was updated successfully!", data: flavour_category }, status: :ok
            else
                render json: { message: "Flavour Category could not be updated." }, status: :unprocessable_entity
            end
        end

        private

        def flavour_category_params
            params.require(:flavour_category).permit(:name, :price, :size)
        end

       end
    end
end