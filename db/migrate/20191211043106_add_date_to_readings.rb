class AddDateToReadings < ActiveRecord::Migration[6.0]
  def change
    add_column :readings, :date, :date
  end
end
