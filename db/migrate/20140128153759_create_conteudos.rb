class CreateConteudos < ActiveRecord::Migration
  def change
    create_table :conteudos do |t|
      t.string :titulo
      t.string :resumo
      t.text :descricao
      t.datetime :data_publicacao
      t.boolean :ativo
      t.string :tipo

      t.timestamps
    end
    add_index :conteudos, :data_publicacao
  end
end
