class AddLocationToReadings < ActiveRecord::Migration[6.0]
  def change
    add_column :readings, :location, :string
  end
end
