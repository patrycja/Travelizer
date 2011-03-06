class Group < ActiveRecord::Base
  has_many :memberships, :dependent => :destroy
  has_many :users, :through => :memberships

  validates_length_of :name, :maximum => 50
  validates_length_of :description, :maximum => 75
  validates_presence_of :name, :description
end
