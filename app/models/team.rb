class Team < ActiveRecord::Base
  attr_accessible :name, :user_ids
  has_many :projects
  has_many :items, :through => :projects
  has_many :team_memberships
  has_many :users, :through => :team_memberships
end
