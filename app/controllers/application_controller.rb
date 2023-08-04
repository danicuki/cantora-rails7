class ApplicationController < ActionController::Base

    before_action :set_language

  def set_language
    session[:locale] = params[:locale] if params[:locale]
    session[:locale] ||= "pt-BR" #http_accept_language.compatible_language_from(I18n.available_locales)
    I18n.locale = session[:locale]



    available = %w{en pt-BR fr}
    if params[:locale] && available.include?(params[:locale])
      session[:locale] = params[:locale]
      I18n.locale = params[:locale]
    elsif session[:locale]
      I18n.locale = session[:locale]
    else
      session[:locale] = http_accept_language.compatible_language_from(I18n.available_locales)
      I18n.locale = http_accept_language.compatible_language_from(I18n.available_locales)
    end
  end

end
