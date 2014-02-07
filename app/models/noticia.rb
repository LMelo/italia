# encoding: utf-8
class Noticia < ActiveRecord::Base

  extend FriendlyId

  friendly_id :titulo

  attr_accessible :ativo, :data_publicacao, :resumo, :titulo, :foto, :conteudo

  has_attached_file :foto, styles: { medium: "300x300>", thumbnail: "150x150<" }

  # VALIDACOES
  validates_presence_of :titulo, :conteudo, :data_publicacao
  validates :resumo, length: {maximum: 200, too_long: "Limite de caracteres deve ser %{count}"}
  after_initialize :default_values, :if => :new_record?

  # SCOPES
  scope :order_by_data_publicacao, order("data_publicacao DESC")


  def default_values
    self.ativo = true
  end

  def primeira_noticia
    self.class.first
  end

  def anterior_noticia
    self.class.first(conditions: ["id < ?", self.id], order: "data_publicacao DESC")
  end

  def proxima_noticia
    self.class.first(conditions: ["id > ?", self.id], order: "data_publicacao ASC")
  end

  def ultima_noticia
    self.class.last
  end

end
