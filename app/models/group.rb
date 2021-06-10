class Group < ApplicationRecord
    has_one :game
    has_many :join_groups
    has_many :users, through: :join_groups
end
