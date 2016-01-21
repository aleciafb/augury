class Feature < ActiveRecord::Base
  belongs_to :epic
  has_many :tasks

  has_one :ticket, as: :ticketable
end
