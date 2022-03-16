class CreateReserveRoom < ActiveRecord::Migration[5.2]
  def change
    create_table :reserve_rooms do |t|
      t.integer :people
      t.date :date
      t.time :time
      t.text :observations
      t.integer :status
      t.references :client_devise, foreign_key: true

      t.timestamps
    end
  end
end
