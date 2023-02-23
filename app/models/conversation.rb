class Conversation < ApplicationRecord
    belongs_to :sender, class_name: 'User', foreign_key: :sender_id
    belongs_to :recipient, class_name: 'User', foreign_key: :recipient_id

    has_many :conversation_messages, dependent: :destroy

end
