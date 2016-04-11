class Submission < ActiveRecord::Base
  validates :name, presence: true
  validates :body, presence: true
  validates :activity_id, presence: true
  belongs_to :activity
end
