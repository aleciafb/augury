class Bug < ActiveRecord::Base
  belongs_to :project

  has_one :ticket, as: :ticketable
  accepts_nested_attributes_for :ticket
end
