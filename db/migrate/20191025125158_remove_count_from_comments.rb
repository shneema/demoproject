class RemoveCountFromComments < ActiveRecord::Migration[6.0]
  def change
    remove_column :comments, :count
  end
end
