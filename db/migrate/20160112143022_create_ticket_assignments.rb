class CreateTicketAssignments < ActiveRecord::Migration
  def change
    create_table :ticket_assignments do |t|
      t.references :user, index: true, foreign_key: true
      t.references :ticket, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
