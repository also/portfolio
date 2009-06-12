class AddProjectPosition < ActiveRecord::Migration
  def self.up
    add_column :projects, :position, :integer
    add_index :projects, :position
  end

  def self.down
    remove_column :projects, :position
  end
end
