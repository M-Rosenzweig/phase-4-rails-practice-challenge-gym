class Membership < ApplicationRecord
  belongs_to :gym
  belongs_to :client

  validates :client_id, uniqueness:{scope: :gym_id}
  # validates :charge, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 600 }
  # validates [:gym_id, :client_id], unique:true
  # validates :gym_id, uniqueness: true
  # validates :email, uniqueness: true
end
