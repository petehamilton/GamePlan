class AddChallengeUserSpecificGameplan < ActiveRecord::Migration
  def up
    create_table :challenges_user_specific_gameplans, :id => false do |t|
      t.integer :user_specific_gameplan_id, :null => false
      t.integer :challenge_id, :null => false
    end
  end

  def down
  end
end
