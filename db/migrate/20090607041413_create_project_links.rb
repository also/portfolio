class CreateProjectLinks < ActiveRecord::Migration
  def self.up
    create_table :project_links do |t|
      t.integer :project_id
      t.string :title
      t.string :link_type
      t.string :url

      t.timestamps
    end
  end

  def self.down
    drop_table :project_links
  end
end
