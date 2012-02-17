class AddChallengeUserSpecificGameplan < ActiveRecord::Migration
  def up
    create_table :usg_challenges, :id => false do |t|
      t.references :user_specific_gameplan_id, :null => false
      t.references :challenge_id, :null => false
    end
  end

  def down
  end
end
