class AddAttachmentsToMessages < ActiveRecord::Migration
  def change
    add_column :messages, :attachments, :string, array: true, default: []

  end
end
