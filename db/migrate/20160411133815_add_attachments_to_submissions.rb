class AddAttachmentsToSubmissions < ActiveRecord::Migration
  def change
    add_column :submissions, :attachments, :string, array: true, default: []
  end
end
