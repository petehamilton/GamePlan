class AddChallengeGameplan < ActiveRecord::Migration
  def up
    create_table :gameplans_challenges, :id => false do |t|
      t.column :gameplan_id, :integer
      t.column :challenge_id, :integer
    end
  end

  def down
  end
end
