class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :username
      t.string :password_digest
      t.integer :is_host
      t.integer :game_id

      t.timestamps
    end
  end
end
