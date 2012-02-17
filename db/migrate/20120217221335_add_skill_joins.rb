class AddSkillJoins < ActiveRecord::Migration
  def up
    create_table :skills_challenges, :id => false do |t|
      t.column :challenge_id, :integer
      t.column :skill_id, :integer
    end
    create_table :skills_gameplans, :id => false do |t|
      t.column :gameplan_id, :integer
      t.column :skill_id, :integer
    end
    create_table :skills_user_specific_gameplans, :id => false do |t|
      t.column :user_specific_gameplan_id, :integer
      t.column :skill_id, :integer
    end
  end

  def down
  end
end
