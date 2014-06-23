class CreateTables < ActiveRecord::Migration
  def change
    create_table :url do |t|
      t.string :long_name
      t.string :short_name
      t.integer :click_count
      t.integer :user_id
      t.timestamps
    end # end do loop
    create_table :user do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.timestamps
    end # end do loop
  end # end change
end # end class
