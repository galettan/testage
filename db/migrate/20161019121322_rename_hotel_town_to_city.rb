class RenameHotelTownToCity < ActiveRecord::Migration[5.0]
  def change
      rename_column :hotels, :town, :city
  end
end
