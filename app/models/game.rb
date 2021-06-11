class Game < ApplicationRecord
    has_many :players, :dependent => :delete_all
    has_many :rounds, :dependend => :delete_all

    def create_rounds
        player_prompts = {}
        total_rounds = self.players.length*2
        prompts = Prompt.all.sample(total_rounds)

        round_numbers = (1..total_rounds).to_a.shuffle

        prompts.each_with_index do |prompt, i|
end
