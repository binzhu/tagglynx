class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.string :name
      t.integer :user_id
      t.string :date_inserted
      t.integer :tagcount

      t.timestamps
    end
  end
end
