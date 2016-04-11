class Message < ActiveRecord::Base
  mount_uploaders :attachments, AttachmentUploader

  validates :name, presence: true
  validates :body, presence: true
  belongs_to :project
end
