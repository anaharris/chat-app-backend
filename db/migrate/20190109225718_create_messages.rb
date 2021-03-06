class CreateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :messages do |t|
      t.string :content
      t.integer :conversation_id
      t.integer :user_id
      t.string :user_name
      t.integer :bot_id
      t.string :avatar

      t.timestamps
    end
  end
end
