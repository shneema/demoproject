class ChangeLikesFields < ActiveRecord::Migration[6.0]
  def change
  	remove_column :likes, :count, :integer
  	add_column :likes, :likeable_id, :integer
  	add_column :likes, :likeable_type, :string
  	add_reference :likes, :user, index: true
  end
end