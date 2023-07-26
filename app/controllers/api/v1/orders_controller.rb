module Api
    module V1
       class OrdersController < ApplicationController

        # GET ALL
        def index
            orders = Order.all

            if orders
                render json: { status: "SUCCESS", message: "Fetched all orders successfully!", data: orders}, status: :ok, include: [:products => {:only => [:id, :name, :price, :size]}]
            else
                render json: orders.errors, status: :bad_request
            end
        end

        # GET BY ID
        def show
            order = Order.find(params[:id])

            if order
                render json: { data: order }, state: :ok, include: [:products => {:only => [:id, :name, :price, :size]}]
            else
                render json: {message: "Order could not be found"}, status: :bad_request

            end
        end

        # POST
        def create
            @order = Order.new(order_params)
            add_products_to_order(@order, params[:products])

            if @order.save
                render json: { status: "SUCCESS", message: "Order was created successfully!", data: @order  }, status: :created, include:
                                                                                                                                        [
                                                                                                                                            :products => {:only => [:id, :name, :price, :size]},
                                                                                                                                            :addresses => {:only => [:id, :street, :number]},
                                                                                                                                            :client => {:only => [:id, :name, :phone]}
                                                                                                                                        ]
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
            is_update = true
            order = Order.find(params[:id])
            add_products_to_order(order, params[:products], is_update)

            if order.update!(order_params)
                render json: { message: "Order was updated successfully!", data: order }, status: :ok, include: [:products => {:only => [:id, :name, :price, :size]}]
            else
                render json: { message: "Order could not be updated." }, status: :unprocessable_entity
            end
        end

        private

        def add_products_to_order(order, products, is_update = false)
            if is_update
                order.order_products.destroy_all
            end
            
            products.each do |product|
                order.products << Product.find(product['id'])
            end
        end

        def include_products(order)
            products = Order.find(order['id']).products

            order.products = products
            order
        end

        def order_params
            params.require(:order).permit(:status_id, :subtotal, :discount, :delivery_fee, :total_price, :payment_method_id, :order_type_id, :address, :client_id, :products)
        end

       end
    end
end