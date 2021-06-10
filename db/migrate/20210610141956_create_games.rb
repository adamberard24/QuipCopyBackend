class CreateGames < ActiveRecord::Migration[6.1]
  def change
    create_table :games do |t|
      t.integer :score
      t.integer :group_id

      t.timestamps
    end
  end
end
