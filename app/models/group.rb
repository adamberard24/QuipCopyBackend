class Group < ApplicationRecord
    has_one :game
    has_many :join_groups
    has_many :users, through: :join_groups
    belongs_to :admin, class_name: "User", foreign_keys: "user_id"

end
