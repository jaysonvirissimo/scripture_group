class AddVerseIdToReaction < ActiveRecord::Migration[6.0]
  def change
    add_column :reactions, :verse_id, :integer
  end
end
