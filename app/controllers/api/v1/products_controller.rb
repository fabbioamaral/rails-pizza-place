module Api
    module V1
       class ProductsController < ApplicationController

        # GET ALL
        def index
            products = Product.all

            if products
                render json: { status: "SUCCESS", message: "Fetched all product successfully!", data: products }, status: :ok
            else
                render json: products.errors, status: :bad_request
            end
        end

        # GET BY ID
        def show
            product = Product.find(params[:id])

            if product
                render json: { data: product }, state: :ok
            else
                render json: {message: "Product could not be found"}, status: :bad_request

            end
        end

        # POST
        def create
            product = Product.new(product_params)

            if product.save
                render json: { status: "SUCCESS", message: "Product was created successfully!", data: product  }, status: :created
            else
                render json: product.errors, status: :unprocessable_entity
            end
        end

        # DELETE
        def destroy
            product = Product.find(params[:id])

            if product.destroy!
                render json: {message: "Product was deleted successfully!"}, status: :ok
            else
                render json: {message: "Product does not exist!"}, status: :bad_request
            end
        end

        # UPDATE
        def update
            product = Product.find(params[:id])

            if product.update!(product_params)
                render json: { message: "Product was updated successfully!", data: product }, status: :ok
            else
                render json: { message: "Product could not be updated." }, status: :unprocessable_entity
            end
        end

        private

        def product_params
            params.require(:product).permit(:name, :price, :description, :size, :category_id, :flavour1_id, :flavour2_id, :border_id)
        end

       end
    end
end