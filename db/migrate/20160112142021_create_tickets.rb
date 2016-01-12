class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.string :name
      t.text :description
      t.date_time :start_date
      t.date_time :end_date
      t.references :state, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
