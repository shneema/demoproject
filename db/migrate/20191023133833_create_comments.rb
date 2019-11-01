class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.integer :count
      t.string :commenter
      t.text :comment
      t.references :article, null: false, foreign_key: true

      t.timestamps
    end
  end
end
