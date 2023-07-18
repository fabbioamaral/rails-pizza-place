module Api
    module V1
       class PizzaBordersController < ApplicationController

        # GET ALL
        def index
            pizza_borders = PizzaBorder.all

            if pizza_borders
                render json: { status: "SUCCESS", message: "Fetched all pizza borders successfully!", data: pizza_borders }, status: :ok
            else
                render json: pizza_borders.errors, status: :bad_request
            end
        end

        # GET BY ID
        def show
            pizza_border = PizzaBorder.find(params[:id])

            if pizza_border
                render json: { data: pizza_border }, state: :ok
            else
                render json: {message: "The pizza border could not be found"}, status: :bad_request

            end
        end

        # POST
        def create
            pizza_border = PizzaBorder.new(pizza_border_params)

            if pizza_border.save
                render json: { status: "SUCCESS", message: "The pizza border was created successfully!", data: pizza_border }, status: :created
            else
                render json: PizzaBorder.errors, status: :unprocessable_entity
            end
        end

        # DELETE
        def destroy
            pizza_border = PizzaBorder.find(params[:id])

            if pizza_border.destroy!
                render json: {message: "The pizza border was deleted successfully!"}, status: :ok
            else
                render json: {message: "The pizza border does not exist!"}, status: :bad_request
            end
        end

        # UPDATE
        def update
            pizza_border = PizzaBorder.find(params[:id])

            if pizza_border.update!(pizza_border_params)
                render json: { message: "The pizza border was updated successfully!", data: pizza_border }, status: :ok
            else
                render json: { message: "The pizza border could not be updated." }, status: :unprocessable_entity
            end
        end

        private

        def pizza_border_params
            params.require(:pizza_border).permit(:name, :price, :size)
        end

       end
    end
end