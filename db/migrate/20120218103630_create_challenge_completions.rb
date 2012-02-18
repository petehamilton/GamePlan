class CreateChallengeCompletions < ActiveRecord::Migration
  def change
    create_table :challenge_completions do |t|
      t.integer :challenge_id
      t.integer :user_id
      t.integer :user_specific_gameplan_id
      t.string :writeup

      t.timestamps
    end
  end
end
