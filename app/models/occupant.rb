class Occupant < ApplicationRecord
  has_many :chores, dependent: :destroy
end
