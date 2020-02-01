class AddSectionIdToReactions < ActiveRecord::Migration[6.0]
  def change
    add_column :reactions, :section_id, :integer
  end
end
