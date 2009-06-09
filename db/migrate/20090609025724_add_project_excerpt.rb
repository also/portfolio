class AddProjectExcerpt < ActiveRecord::Migration
  def self.up
    add_column :projects, :excerpt, :text
    Project.reset_column_information
    Project.update_all 'excerpt = description'
  end

  def self.down
    Project.update_all 'description = excerpt'
    remove_column :projects, :excerpt
  end
end
