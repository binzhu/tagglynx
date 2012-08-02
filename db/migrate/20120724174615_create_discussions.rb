class CreateDiscussions < ActiveRecord::Migration
  def change
    create_table :discussions do |t|
      t.integer :webpage_id
      t.string :title
      t.text :content
      t.integer :active
      t.integer :sticky
      t.integer :user_id
      t.integer :countviews

      t.timestamps
    end
  end
end
