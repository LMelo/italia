class Evento < ActiveRecord::Base
  attr_accessible :data_evento, :nome, :subtitulo, :descricao_evento

  has_many :galerias, class_name: "Galeria", foreign_key: "evento_id"

  # VALIDACOES
  validates_presence_of :data_evento, :nome, :descricao_evento

  # SCOPES
  scope :order_by_data_evento_desc, order("data_evento DESC")

end
