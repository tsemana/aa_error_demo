class PointTable < ActiveRecord::Base
  attr_accessible :name, :project_id

  belongs_to :project
  has_many :job_factors
end
