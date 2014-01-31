class AddAttachmentFotoToPremios < ActiveRecord::Migration
  def self.up
    change_table :premios do |t|
      t.attachment :foto
    end
  end

  def self.down
    drop_attached_file :premios, :foto
  end
end
