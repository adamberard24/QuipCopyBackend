class CreatePlayers < ActiveRecord::Migration[6.1]
  def change
    create_table :players do |t|
      t.string :name
      t.integer :score
      t.boolean :is_host
      t.integer :game_id

      t.timestamps
    end
  end
end

