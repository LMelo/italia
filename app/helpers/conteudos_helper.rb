module ConteudosHelper

  def helper_conteudo_tipo_colletion
    Conteudo.get_tipo_colletion
  end

  def helper_conteudo_show_thumbnail(noticia)
    render "conteudos/thumbnail", :noticia => noticia
  end

  def helper_conteudo_list_thumbnail(objeto_noticia)
    render "conteudos/list_thumbnail", :conteudo_noticias => objeto_noticia
  end

end
