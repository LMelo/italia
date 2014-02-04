class AddAttachmentFileToGalerias < ActiveRecord::Migration
  def self.up
    change_table :galerias do |t|
      t.attachment :file
    end
  end

  def self.down
    drop_attached_file :galerias, :file
  end
end
