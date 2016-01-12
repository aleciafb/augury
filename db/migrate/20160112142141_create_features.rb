class CreateFeatures < ActiveRecord::Migration
  def change
    create_table :features do |t|
      t.decimal :estimation
      t.references :epic, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
