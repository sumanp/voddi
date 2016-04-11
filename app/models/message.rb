class Message < ActiveRecord::Base
  validates :name, presence: true
  validates :body, presence: true
  belongs_to :project
end
