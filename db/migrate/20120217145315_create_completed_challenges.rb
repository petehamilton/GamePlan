class CreateCompletedChallenges < ActiveRecord::Migration
  def change
    create_table :completed_challenges do |t|
      t.integer :user_id
      t.integer :challenge_id
      t.integer :user_specific_gameplan_id

      t.timestamps
    end
  end
end
