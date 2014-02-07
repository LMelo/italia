class Evento < ActiveRecord::Base
  extend FriendlyId

  friendly_id :nome

  attr_accessible :data_evento, :nome, :subtitulo, :descricao_evento

  has_many :galerias, class_name: "Galeria", foreign_key: "evento_id"

  # VALIDACOES
  validates_presence_of :data_evento, :nome, :descricao_evento

  # SCOPES
  scope :order_by_data_evento_desc, order("data_evento, id DESC")

  def primeiro_evento
    self.class.first
  end

  def anterior_evento
    self.class.first(conditions: ["id < ?", self.id], order: "data_evento, id DESC")
  end

  def proximo_evento
    self.class.first(conditions: ["id > ?", self.id], order: "data_evento, id DESC")
  end

  def ultimo_evento
    self.class.last
  end


end
