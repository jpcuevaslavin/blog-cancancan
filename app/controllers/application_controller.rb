class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception


  rescue_from CanCan::AccessDenied do |exception|
    respond_to do |format|
      format.html { redirect_to root_url, alert: 'PARA LA MANO OEEE!' }
    end
  end

  rescue_from ActiveRecord::RecordNotFound do |exception|
    respond_to do |format|
      format.html { redirect_to root_url, alert: 'Hubo un error, intenta nuevamente.' }
    end
  end

end
