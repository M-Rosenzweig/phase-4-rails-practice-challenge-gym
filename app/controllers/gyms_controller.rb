class GymsController < ApplicationController

    def index 
        gyms = Gym.all 
        render json: gyms
    end
 
    def show 
        gym = Gym.find(params[:id])
        render json: gym, status: :ok
    rescue ActiveRecord::RecordNotFound 
        render json: {errors:"Not found"}, status:404
    end

    def destroy
        gym = Gym.find_by(id: params[:id])
        if gym 
        gym.destroy
        # head :no_content
        render json:{errors:"Done"}, status:204
         else
             render json:{errors:"Not found"}, status:404

        end
    end

end
