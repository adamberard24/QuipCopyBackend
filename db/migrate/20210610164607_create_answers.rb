class CreateAnswers < ActiveRecord::Migration[6.1]
  def change
    create_table :answers do |t|
      t.integer :user_id
      t.boolean :vote

      t.timestamps
    end
  end
end
