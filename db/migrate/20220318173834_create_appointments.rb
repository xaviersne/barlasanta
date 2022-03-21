class CreateAppointments < ActiveRecord::Migration[5.2]
  def change
    create_table :appointments do |t|
      t.date :date
      t.time :time
      t.integer :people
      t.references :client_devise, foreign_key: true

      t.timestamps
    end
  end
end
