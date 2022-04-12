class MembershipsController < ApplicationController
    def index
        memberships = Membership.all
        render json: memberships
    end

    def create
        member = Membership.create!(params.permit(:gym_id, :client_id, :charge ))
        render json: member, status: 201
    rescue ActiveRecord::RecordInvalid => invalid
        render json:{errors:invalid.record.errors}, status:422 
    end



end
