class ClientsController < ApplicationController

    def show
        client = Client.find(params[:id])
        render json: client, status: 200
    rescue ActiveRecord::RecordNotFound
        render json: { error: "Client not found" }, status: 404
    end
    # def show 
    #     client = Client.find(params[:id])
    #     if client
    #     render json: client 
    #     else 
    #      render json: {"errors": "client not found"}, status:404 
    #   end
    #  #  why cant i get it to say that message?
    #  end
end
