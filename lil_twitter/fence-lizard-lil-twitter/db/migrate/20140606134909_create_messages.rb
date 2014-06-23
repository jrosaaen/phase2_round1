class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |m|
      m.integer :sender_id
      m.integer :receiver_id
      m.text :message
      m.timestamps
    end
  end
end
