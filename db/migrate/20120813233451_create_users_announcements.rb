class CreateUsersAnnouncements < ActiveRecord::Migration
  def change
    create_table :users_announcements do |t|
      t.integer :user_id
      t.integer :announcement_id
      t.datetime :dismiss_date, :default => nil

      t.timestamps
    end
  end
end
