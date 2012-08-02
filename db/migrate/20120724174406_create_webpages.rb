class CreateWebpages < ActiveRecord::Migration
  def change
    create_table :webpages do |t|
      t.string :domain
      t.string :url
      t.string :title
      t.integer :user_id
      t.integer :active

      t.timestamps
    end
  end
end
