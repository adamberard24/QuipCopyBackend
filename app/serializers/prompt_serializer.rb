class PromptSerializer < ActiveModel::Serializer
  attributes :id, :prompt_text, :round_id
end
