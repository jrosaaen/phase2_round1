class User < ActiveRecord::Base
  has_many :tweets

  has_many :followings
  has_many :followers, through: :followings

  has_many :inverse_followings, class_name: "Following", foreign_key: :follower_id
  has_many :inverse_followers, through: :inverse_followings, source: :user
end

