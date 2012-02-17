class CreateChallenges < ActiveRecord::Migration
  def change
    create_table :challenges do |t|
      t.string :summary
      t.text :description
      t.integer :level

      t.timestamps
    end
  end
end
