class CreateVotes < ActiveRecord::Migration[6.1]
  def change
    create_table :votes do |t|
      t.integer :player_id
      t.integer :answer_id

      t.timestamps
    end
  end
end

