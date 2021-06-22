class CreateJoinGroups < ActiveRecord::Migration[5.2]
  def change
    create_table :join_groups do |t|

      t.timestamps
    end
  end
end
