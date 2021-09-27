class AddSenderAndReceiverToConversations < ActiveRecord::Migration[6.1]
  def change
    add_reference :conversations, :sender, null: false, foreign_key: { to_table: :users }
    add_reference :conversations, :receiver, null: false, foreign_key: { to_table: :users }
  end
end
