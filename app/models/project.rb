class Project < ActiveRecord::Base
  
  default_scope :order => 'updated_at'

  has_many :tasks, :dependent => :delete_all

  belongs_to :user

  validates :name, :presence => true

end