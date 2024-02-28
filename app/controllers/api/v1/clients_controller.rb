module Api
    module V1
       class ClientsController < ApplicationController

        # GET ALL
        def index
            clients = Client.all

            if clients
                render json: { status: "SUCCESS", message: "Fetched all clients successfully!", data: clients }, status: :ok
            else
                render json: clients.errors, status: :bad_request
            end
        end

        # GET BY PHONE NUMBER
        def show
            # api/v1/clients/123123 - 123123 would be the params[:id] here
            client = Client.find_by(phone: params[:id])

            if client
                render json: { data: client }, include: :addresses, state: :ok
            else
                render json: {message: "Client could not be found"}, status: :bad_request

            end
        end

        # POST
        def create
            client = Client.new(client_params)

            if client.save
                render json: { status: "SUCCESS", message: "Client was created successfully!", data: client  }, status: :created
            else
                render json: client.errors, status: :unprocessable_entity
            end
        end

        # DELETE
        def destroy
            client = Client.find(params[:id])

            if client.destroy!
                render json: {message: "Client was deleted successfully!"}, status: :ok
            else
                render json: {message: "Client does not exist!"}, status: :bad_request
            end
        end

        # UPDATE
        def update
            client = Client.find(params[:id])

            if client.update!(client_params)
                render json: { message: "Client was updated successfully!", data: client }, status: :ok
            else
                render json: { message: "Client could not be updated." }, status: :unprocessable_entity
            end
        end

        private

        def client_params
            params.require(:client).permit(:name, :phone, :addresses)
        end

       end
    end
end