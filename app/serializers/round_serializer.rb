class RoundSerializer < ActiveModel::Serializer
  attributes :id, :game_id, :answer_id, :prompt_id
end
