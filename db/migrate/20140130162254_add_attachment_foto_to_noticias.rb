class AddAttachmentFotoToNoticias < ActiveRecord::Migration
  def self.up
    change_table :noticias do |t|
      t.attachment :foto
    end
  end

  def self.down
    drop_attached_file :noticias, :foto
  end
end
