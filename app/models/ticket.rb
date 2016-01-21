class Ticket < ActiveRecord::Base
  belongs_to :state
  has_many :ticket_assignments
  has_many :users, through: :ticket_assignments

  belongs_to :ticketable, polymorphic: true
end
