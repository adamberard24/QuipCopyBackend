class CreateAnswers < ActiveRecord::Migration[6.1]
  def change
    create_table :answers do |t|
      t.integer :player_id
      t.integer :round_id
      t.string :text

      t.timestamps
    end
  end
end
