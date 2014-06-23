class CreateNewPost < ActiveRecord::Migration
  def change
    create_table :CreateNewPost do |t|
      t.integer :category_id
      t.string :title
      t.string :description
      t.string :price
      t.string :email
      t.string :user
      t.string :edit_key

      t.timestamps
    end
  end
end
