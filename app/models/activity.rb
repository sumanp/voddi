class Activity < ActiveRecord::Base
  belongs_to :project
  has_many :submissions
end
