class AddVisitsToVisitor < ActiveRecord::Migration[4.2]
  def self.up
    add_column :visitors, :visits, :integer, :default => 0 
  end

  def self.down
    remove_column :visitors, :visits
  end
end
