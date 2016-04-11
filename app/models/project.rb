class Project < ActiveRecord::Base
  validates :title, presence: true
  validates :start_date, presence: true
  validates :end_date, presence: true

  validates_associated :project_users
  validates_associated :users
  validates_associated :messages
  validates_associated :activities

  has_many :project_users, dependent: :destroy
  has_many :users, :through => :project_users
  has_many :messages, dependent: :destroy
  has_many :activities, dependent: :destroy

  def project_with_id
    	"V#{id} : #{title}"
 	end
end
