class Url < ActiveRecord::Base
  belongs_to :user
  # need to validate the uniqueness of the short url
  # need to validate the format of the long_url
  # need to generate a unique key for each url passed in
end
