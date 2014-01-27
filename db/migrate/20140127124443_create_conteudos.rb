class CreateConteudos < ActiveRecord::Migration
  def change
    create_table :conteudos do |t|
      t.string :titulo
      t.string :link
      t.text :texto
      t.boolean :ativo
      t.string :tipo

      t.timestamps
    end
    add_index :conteudos, :tipo
  end
end
