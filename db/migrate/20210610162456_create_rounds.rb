class CreateRounds < ActiveRecord::Migration[6.1]
  def change
    create_table :rounds do |t|
      t.integer :game_id
      t.integer :round_number
      t.integer :prompt_id

      t.timestamps
    end
  end
end
