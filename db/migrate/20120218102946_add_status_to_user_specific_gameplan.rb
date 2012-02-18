class AddStatusToUserSpecificGameplan < ActiveRecord::Migration
  def change
    add_column :user_specific_gameplans, :status, :integer
  end
end
