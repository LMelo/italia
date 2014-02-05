module ApplicationHelper

  def helper_app_btn_new
    "btn btn-sm btn-primary"
  end

  def helper_app_btn_show
    "btn btn-xs btn-default"
  end

  def helper_app_btn_edit
    helper_app_btn_show
  end

  def helper_app_btn_destroy
    "btn btn-xs btn-danger"
  end

  def helper_app_btn_back
    helper_app_btn_show
  end

  def helper_app_btn_icon_new
    "btn btn-lg btn-primary glyphicon glyphicon-plus"
  end

  def helper_app_btn_icon_show
    "btn btn-default btn-lg glyphicon glyphicon-eye-open"
  end

  # BUTTON PARA SER UTILIZANDO SOMENTE EM TABLES
  def helper_app_btn_icon_show_row
    "btn glyphicon glyphicon-eye-open"
  end

  # BUTTON PARA SER UTILIZANDO SOMENTE EM TABLES
  def helper_app_btn_icon_edit_row
    "btn glyphicon glyphicon-edit"
  end

  def helper_app_btn_icon_edit
    "btn btn-default btn-lg glyphicon glyphicon-edit"
  end

  def helper_app_btn_icon_destroy
    "btn glyphicon glyphicon-remove"
  end

  def helper_app_btn_icon_back
    "btn btn-default btn-lg glyphicon glyphicon-arrow-left"
  end

  def helper_app_btn_title_new
    " Adicionar"
  end

  def helper_app_btn_title_show
    " Visualizar"
  end

  def helper_app_btn_title_edit
    " Editar"
  end

  def helper_app_btn_title_destroy
    " Excluir"
  end

  def helper_app_btn_title_back
    " Voltar"
  end

end
