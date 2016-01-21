class AddTicketableIdAndTicketableTypeToTicket < ActiveRecord::Migration
  def change
    add_column :tickets, :ticketable_id, :integer
    add_column :tickets, :ticketable_type, :string

    add_index :tickets, :ticketable_id
  end
end
