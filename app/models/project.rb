class Project < ActiveRecord::Base
  has_many :project_users
  has_many :users, :through => :project_users
  has_many :messages

  def project_with_id
    	"V#{id} : #{title}"
 	end
end
