class AddAttachmentPhotoToPros < ActiveRecord::Migration
  def self.up
    change_table :pros do |t|
      t.attachment :photo
    end
  end

  def self.down
    remove_attachment :pros, :photo
  end
end
