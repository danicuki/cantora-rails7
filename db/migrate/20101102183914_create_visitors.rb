class CreateVisitors < ActiveRecord::Migration[4.2]
  def self.up
    create_table :visitors do |t|
      t.string :name
      t.string :email
    
      t.timestamps
    end
  end

  def self.down
    drop_table :visitors
  end
end
