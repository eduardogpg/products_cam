class AddRegionToPlaces < ActiveRecord::Migration[7.0]
  def change
    add_reference :places, :region, null: false, foreign_key: true
  end
end
