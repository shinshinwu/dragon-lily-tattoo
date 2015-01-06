class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.date :appointment_date
      t.time :appointment_time
      t.boolean :in_fl
      t.belongs_to :artist
      t.belongs_to :customer
      t.string :subject
      t.string :notes

      t.timestamps
    end
  end
end
