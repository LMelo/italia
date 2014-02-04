module RegulamentosHelper

  def helper_regulamento_secao_formato(noticia_objeto)

    unless noticia_objeto.regulamento
      secao = noticia_objeto.secao.to_s
      secao.rjust(secao.size, '0')
    else

      secao = noticia_objeto.secao.to_s
      secao = secao.rjust(Regulamento.get_maior_secao(noticia_objeto.regulamento_id), '0')
      helper_regulamento_secao_formato(noticia_objeto.regulamento) + "." + secao
    end
  end

  def helper_regulamento_secao_pai(noticia_objeto)
    secao_pai = ""
    if noticia_objeto
      unless noticia_objeto.regulamento
        secao_pai = noticia_objeto.secao.to_s
        secao_pai = secao_pai.rjust(secao_pai.size, '0')
      else
        secao_formato = noticia_objeto.secao.to_s
        secao_formato = secao_formato.rjust(secao_formato.size, '0')
        secao_pai = helper_regulamento_secao_formato(noticia_objeto.regulamento) + "." + secao_formato
      end
    end
    secao_pai
  end

  a = 1


end
