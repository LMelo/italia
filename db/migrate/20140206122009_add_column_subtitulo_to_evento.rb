class AddColumnSubtituloToEvento < ActiveRecord::Migration
  def change
    add_column :eventos, :subtitulo, :string
  end
end
