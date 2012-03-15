class Project < ActiveRecord::Base

  has_many :tasks, :dependent => :delete_all

  belongs_to :user

  validates :name, :presence => true

end