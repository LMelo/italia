class AddAttachmentFotoToConteudos < ActiveRecord::Migration
  def self.up
    change_table :conteudos do |t|
      t.attachment :foto
    end
  end

  def self.down
    drop_attached_file :conteudos, :foto
  end
end
