class VoteSerializer < ActiveModel::Serializer
  attributes :id, :player_id, :answer_id
end
