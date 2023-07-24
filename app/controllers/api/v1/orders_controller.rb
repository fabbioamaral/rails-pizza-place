module Api
    module V1
       class OrdersController < ApplicationController

        # GET ALL
        def index
            orders = Order.all

            if orders
                render json: { status: "SUCCESS", message: "Fetched all orders successfully!", data: orders }, status: :ok
            else
                render json: orders.errors, status: :bad_request
            end
        end

        # GET BY ID
        def show
            order = Order.find(params[:id])

            if order
                render json: { data: order }, state: :ok
            else
                render json: {message: "Order could not be found"}, status: :bad_request

            end
        end

        # POST
        def create
            order = Order.new(order_params)

            if order.save
                render json: { status: "SUCCESS", message: "Order was created successfully!", data: order  }, status: :created
            else
                render json: order.errors, status: :unprocessable_entity
            end
        end

        # DELETE
        def destroy
            order = Order.find(params[:id])

            if order.destroy!
                render json: {message: "Order was deleted successfully!"}, status: :ok
            else
                render json: {message: "Order does not exist!"}, status: :bad_request
            end
        end

        # UPDATE
        def update
            order = Order.find(params[:id])

            if order.update!(order_params)
                render json: { message: "Order was updated successfully!", data: order }, status: :ok
            else
                render json: { message: "Order could not be updated." }, status: :unprocessable_entity
            end
        end

        private

        def order_params
            params.require(:order).permit(:subtotal, :discount, :delivery_fee, :total_price, :payment_method_id, :order_type_id, :address, :client_id, :status_id)
        end

       end
    end
end