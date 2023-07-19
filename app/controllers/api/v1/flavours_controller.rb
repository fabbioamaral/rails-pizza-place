module Api
    module V1
       class FlavoursController < ApplicationController

        # GET ALL
        def index
            flavours = Flavour.all

            if flavours
                render json: { status: "SUCCESS", message: "Fetched all flavours successfully!", data: flavours }, status: :ok
            else
                render json: flavours.errors, status: :bad_request
            end
        end

        # GET BY ID
        def show
            flavours = Flavour.find(params[:id])

            if flavours
                render json: { data: flavours }, state: :ok
            else
                render json: {message: "The flavour could not be found"}, status: :bad_request

            end
        end

        # POST
        def create
            flavours = Flavour.new(pizza_border_params)

            if flavours.save
                render json: { status: "SUCCESS", message: "The flavour was created successfully!", data: flavours }, status: :created
            else
                render json: Flavour.errors, status: :unprocessable_entity
            end
        end

        # DELETE
        def destroy
            flavours = Flavour.find(params[:id])

            if flavours.destroy!
                render json: {message: "The flavour was deleted successfully!"}, status: :ok
            else
                render json: {message: "The flavour does not exist!"}, status: :bad_request
            end
        end

        # UPDATE
        def update
            flavours = Flavour.find(params[:id])

            if flavours.update!(pizza_border_params)
                render json: { message: "The flavour was updated successfully!", data: flavours }, status: :ok
            else
                render json: { message: "The flavour could not be updated." }, status: :unprocessable_entity
            end
        end

        private

        def flavour_params
            params.require(:flavours).permit(:name, :category_flavour_id)
        end

       end
    end
end