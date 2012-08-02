class CreateTagsObjects < ActiveRecord::Migration
  def change
    create_table :tags_objects do |t|
      t.integer :tag_id
      t.integer :object_id
      t.integer :object_type
      t.timestamps
    end
  end
end
