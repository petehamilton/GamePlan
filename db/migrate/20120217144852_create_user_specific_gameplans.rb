class CreateUserSpecificGameplans < ActiveRecord::Migration
  def change
    create_table :user_specific_gameplans do |t|
      t.integer :gameplan_id
      t.integer :user_id

      t.timestamps
    end
  end
end
