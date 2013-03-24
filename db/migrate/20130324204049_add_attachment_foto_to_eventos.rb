class AddAttachmentFotoToEventos < ActiveRecord::Migration
  def self.up
    change_table :eventos do |t|
      t.attachment :foto
    end
  end

  def self.down
    drop_attached_file :eventos, :foto
  end
end
