class AddColumnDescricaoEventoToEvento < ActiveRecord::Migration
  def change
    add_column :eventos, :descricao_evento, :text
  end
end
