class CreateReactions < ActiveRecord::Migration[6.0]
  def change
    create_table :reactions do |t|
      t.text :body
      t.references :reading, null: false, foreign_key: true
      t.string :name

      t.timestamps
    end
  end
end
