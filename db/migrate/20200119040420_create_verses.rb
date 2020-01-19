class CreateVerses < ActiveRecord::Migration[6.0]
  def change
    create_table :verses do |t|
      t.integer :number
      t.text :text
      t.references :chapter, null: false, foreign_key: true

      t.timestamps
    end
  end
end
