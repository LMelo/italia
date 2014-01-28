# encoding: utf-8
class Conteudo < ActiveRecord::Base

  TIPOS = ["PRE", "NOT", "EDI"]

  @@premio, @@noticia, @@edital = TIPOS

  attr_accessible :ativo, :data_publicacao, :descricao, :resumo, :tipo, :titulo

  # VALIDACOES
  validates_presence_of :titulo, :descricao, :tipo, :data_publicacao
  validates :tipo, inclusion: {in: TIPOS}


  after_initialize :default_values, :if => :new_record?


  # SCOPES
  scope :where_noticia, where(:tipo => @@noticia, :ativo => true)
  scope :where_edital, where(:tipo => @@edital, :ativo => true)
  scope :where_premio, where(:tipo => @@premio, :ativo => true)

  scope :order_by_data_publicacao, order("data_publicacao DESC")


  def default_values
    self.ativo = true
  end

  class << self

    def get_tipo_colletion
      [["Prêmio", @@premio], ["Noticia", @@noticia], ["Edital/Regulamento", @@edital]]
    end

  end

end

