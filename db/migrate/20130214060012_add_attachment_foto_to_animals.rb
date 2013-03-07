class AddAttachmentFotoToAnimals < ActiveRecord::Migration
  def self.up
    change_table :animals do |t|
      t.attachment :foto
    end
  end

  def self.down
    drop_attached_file :animals, :foto
  end
end
