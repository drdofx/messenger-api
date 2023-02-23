class ConversationMessage < ApplicationRecord
    # model association
    belongs_to :conversation
    belongs_to :sender, class_name: 'User', foreign_key: :sender_id
    
    # validations
    validates_presence_of :message, :conversation_id, :sender_id

end
