class AddSpeakerIdToEvents < ActiveRecord::Migration
  def change
    add_column :events, :speaker_id, :integer
  end
end
