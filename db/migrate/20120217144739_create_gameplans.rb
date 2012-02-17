class CreateGameplans < ActiveRecord::Migration
  def change
    create_table :gameplans do |t|
      t.integer :organisation_id
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
