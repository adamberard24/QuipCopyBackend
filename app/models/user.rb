class User < ApplicationRecord
    has_secure_password
    has_many :join_groups
    has_many :joined_groups, through: :memberships, source: :group
    has_many :own_groups, class_name: "Group", foreign_keys: "user_id"
end
