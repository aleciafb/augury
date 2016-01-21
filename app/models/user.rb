class User < ActiveRecord::Base
  has_many :ticket_assignments
  has_many :tickets, through: :ticket_assignments
  # has_many :features, :bugs, :chore, though: :ticket_assignments
end
