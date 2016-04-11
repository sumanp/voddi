class Activity < ActiveRecord::Base
  validates :title, presence: true
  validates :project_id, presence: true
  belongs_to :project
  has_many :submissions, dependent: :destroy
end
