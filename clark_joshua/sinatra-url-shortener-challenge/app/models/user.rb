class User < ActiveRecord::Base
  has_many :urls
  # need to validate the username uniqueness
  # need to validate the password length
end
