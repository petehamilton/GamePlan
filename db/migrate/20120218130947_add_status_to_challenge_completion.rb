class AddStatusToChallengeCompletion < ActiveRecord::Migration
  def change
    add_column :challenge_completions, :status, :integer, :default => 0
  end
end
