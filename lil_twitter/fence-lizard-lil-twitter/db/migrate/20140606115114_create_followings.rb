class CreateFollowings < ActiveRecord::Migration
  def change
    create_table :followings do |f|
      f.integer :user_id
      f.integer :follower_id
    end
  end
end
