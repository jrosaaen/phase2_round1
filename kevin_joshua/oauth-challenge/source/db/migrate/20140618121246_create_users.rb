class CreateUsers < ActiveRecord::Migration
  def change do |t|
    t.string first_name
    t.string last_name
    t.string access_token
  end
end
