class CreateConversationMessages < ActiveRecord::Migration[6.1]
  def change
    create_table :conversation_messages do |t|
      t.integer :conversation_id
      t.integer :sender_id
      t.text :message
      t.datetime :sent_at, default: -> { 'CURRENT_TIMESTAMP' }
  
      t.timestamps
    end
  end
end
