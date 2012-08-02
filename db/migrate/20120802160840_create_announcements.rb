class CreateAnnouncements < ActiveRecord::Migration
  def change
    create_table :announcements do |t|
      t.text :body
      t.integer :enabled
      t.integer :allow_dismiss
      t.integer :sort
      t.datetime :date_inserted

      t.timestamps
    end
  end
end
