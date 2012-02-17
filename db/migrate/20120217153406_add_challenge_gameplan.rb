class AddChallengeGameplan < ActiveRecord::Migration
  def up
    create_table :challenges_gameplans, :id => false do |t|
      t.column :gameplan_id, :integer
      t.column :challenge_id, :integer
    end
  end

  def down
  end
end
