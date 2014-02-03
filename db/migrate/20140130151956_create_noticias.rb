class CreateNoticias < ActiveRecord::Migration
  def change
    create_table :noticias do |t|
      t.string :titulo
      t.string :resumo, limit: 200
      t.datetime :data_publicacao
      t.boolean :ativo
      t.text :conteudo

      t.timestamps
    end
  end
end
