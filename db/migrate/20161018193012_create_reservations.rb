class CreateReservations < ActiveRecord::Migration[5.0]
  def change
    create_table :reservations do |t|
      t.belongs_to :hotel, index: true
      t.belongs_to :user, index: true
      t.datetime :date_from
      t.datetime :date_to

      t.timestamps
    end
  end
end
