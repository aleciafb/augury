class Chore < ActiveRecord::Base
  belongs_to :project

  has_one :ticket, as: :ticketable
end
