class Project < ActiveRecord::Base
  belongs_to :team
  has_many :epics
  has_many :chores
  has_many :bugs
  has_many :features, through: :epics
end
