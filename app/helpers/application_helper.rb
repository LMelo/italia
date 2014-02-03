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

end
