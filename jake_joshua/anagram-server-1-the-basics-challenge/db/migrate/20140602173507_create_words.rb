class CreateWords < ActiveRecord::Migration
  def change
    create_table :words do |w|
      w.string :name
      w.string :sorted_word
    end
 end

end
