class AddAudioUrlToBook < ActiveRecord::Migration[6.0]
  def change
    add_column :books, :audio_url, :string
  end
end
