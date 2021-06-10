class GameSerializer < ActiveModel::Serializer
  attributes :id, :score, :group_id
end
