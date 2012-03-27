class Task < ActiveRecord::Base
  
  default_scope :order => 'priority'

  belongs_to :project

  validates :name, :presence => true

end