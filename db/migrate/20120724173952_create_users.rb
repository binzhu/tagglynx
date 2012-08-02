class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :pwd
      t.string :seed
      t.string :fname
      t.string :mname
      t.string :lname
      t.string :country
      t.string :postal
      t.text :about
      t.string :email
      t.integer :showemail
      t.integer :gender
      t.datetime :dob
      t.integer :invited_by
      t.datetime :firstlogin
      t.datetime :lastlogin
      t.integer :timediff
      t.integer :active
      t.string :fb_id
      t.string :twitter_id
      t.string :blog_link

      t.timestamps
    end
  end
end
