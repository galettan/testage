class ReservationPolymorphism < ActiveRecord::Migration[5.0]
  def change
      rename_column :reservations, :hotel_id, :reservable_id
      add_column :reservations, :reservable_type, :string, after: :reservable_id
  end
end
