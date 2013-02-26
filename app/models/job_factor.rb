class JobFactor < ActiveRecord::Base
  attr_accessible :code, :name, :point_table_id

  belongs_to :point_table
end
