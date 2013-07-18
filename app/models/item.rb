class Item < ActiveRecord::Base
  attr_accessible :completed, :description, :project_id, :title
  validates_inclusion_of :completed, in: [true, false]
  belongs_to :project
end
