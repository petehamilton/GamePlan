class CreateGameplans < ActiveRecord::Migration
  def change
    create_table :gameplans do |t|
      t.integer :organisation_id
      t.string :name
      t.text :desription

      t.timestamps
    end
  end
end
