class ChangeCommentsFields < ActiveRecord::Migration[6.0]
  def change
  	remove_column :comments, :commenter
  	add_reference :comments, :user, index: true
  end
end
