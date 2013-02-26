class Project < ActiveRecord::Base
  attr_accessible :name

  has_one :point_table
end
