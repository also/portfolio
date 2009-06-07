class CreateProjectMedias < ActiveRecord::Migration
  def self.up
    create_table :project_medias do |t|
      t.integer :project_id
      t.string :media_type
      t.string :url
      t.integer :width
      t.integer :height
      t.string :title
      t.text :description

      t.timestamps
    end
  end

  def self.down
    drop_table :project_medias
  end
end
