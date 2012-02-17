class AddRankToUsers < ActiveRecord::Migration
  def change
    add_column :users, :rank, :integer, :default => 1
  end
end
