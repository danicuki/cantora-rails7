class VisitorsController < ApplicationController

    def baixar
        @visitor = Visitor.new
    end

    def update
        redirect_to :action => "create"
    end

    def create
        @contact ||= Visitor.create(visitor_params)
        respond_to do |format|
            # begin
                # if @contact.save
                #     @contact.put(:subscribe, :list => 'Nova lista')
                    session[:visitor] = @contact
                    format.html { redirect_to :controller => :musicas, :action => "baixar" }
            #     else
            #         format.html { render :action => "baixar" }
            #     end
            # rescue ActiveResource::ServerError
            #     session[:visitor] = @contact
            #     format.html { redirect_to :controller => :musicas, :action => "baixar" }
            # end
        end
    end

    def visitor_params
      params.require(:visitor).permit(:name, :email)
    end

end
