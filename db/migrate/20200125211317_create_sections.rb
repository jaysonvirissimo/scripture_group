class CreateSections < ActiveRecord::Migration[6.0]
  def change
    create_table :sections do |t|
      t.integer :starting_chapter_id, null: false, foreign_key: true
      t.integer :ending_chapter_id, null: false, foreign_key: true
      t.references :book, null: false, foreign_key: true
      t.references :reading, null: false, foreign_key: true

      t.timestamps
    end
  end
end
