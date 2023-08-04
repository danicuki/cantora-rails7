class MusicasController < ApplicationController
	def index

	end

	def baixar
		redirect_to :controller => "visitors", :action => "baixar" unless session[:visitor]
		return unless params[:track]
		redirect_to "https://s3.amazonaws.com/static.cantora.mus.br/music/daniellaalcarpe-#{params[:track]}.mp3", allow_other_host: true
	end

	def lista
		redirect_to :controller => "visitors", :action => "baixar" if (session[:visitor].nil? || session[:visitor].email != "danicuki@gmail.com")

		v1 = Mailee::Contact.find(:all, :order_by => "updated_at DESC", :params => {:page => 1})
		v2 = Mailee::Contact.find(:all, :order_by => "updated_at DESC", :params => {:page => 2})
		v3 = Mailee::Contact.find(:all, :order_by => "updated_at DESC", :params => {:page => 3})

		@visitors = v1 + v2 + v3
	end
end
