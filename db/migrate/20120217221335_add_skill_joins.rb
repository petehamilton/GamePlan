class AddSkillJoins < ActiveRecord::Migration
  def up
    create_table :challenges_skills, :id => false do |t|
      t.column :challenge_id, :integer
      t.column :skill_id, :integer
    end
    create_table :gameplans_skills, :id => false do |t|
      t.column :gameplan_id, :integer
      t.column :skill_id, :integer
    end
  end

  def down
  end
end
