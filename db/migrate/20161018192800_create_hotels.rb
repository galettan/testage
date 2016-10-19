class CreateHotels < ActiveRecord::Migration[5.0]
  def change
    create_table :hotels do |t|
      t.string :name
      t.string :address
      t.string :postal_code
      t.string :town

      t.timestamps
    end
  end
end
