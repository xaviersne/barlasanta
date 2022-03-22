class CreatePruebas < ActiveRecord::Migration[5.2]
  def change
    create_table :pruebas do |t|
      t.date :date
      t.time :time
      t.integer :people

      t.timestamps
    end
  end
end
