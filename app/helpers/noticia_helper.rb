module NoticiaHelper

  def helper_noticia_show_thumbnail(noticia)
    render "noticia/thumbnail", :noticia => noticia
  end

  def helper_noticia_list_thumbnail(objeto_noticia)
    render "noticia/list_thumbnail", :conteudo_noticias => objeto_noticia
  end

end
