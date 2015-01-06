class CreateArtists < ActiveRecord::Migration
  def change
    create_table :artists do |t|
      t.string :name
      t.boolean :in_fl
      t.string :email
      t.integer :phone
      t.string :availability

      t.timestamps
    end
  end
end
