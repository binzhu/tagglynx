class AddParentCommentIdToComments < ActiveRecord::Migration
  def change
    add_column :comments, :parentcomment_id, :integer
  end
end
