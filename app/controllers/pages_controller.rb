class PagesController < ApplicationController
    def home
    end 

    def searches
        if params[:query].present?
            #@advogado= Pessoa.where("name LIKE ?", "%#{params[:query].downcase}%")
            @processos = Processo.joins("INNER JOIN pessoas ON pessoas.id = processos.advogado_id WHERE pessoas.nome LIKE %#{params[:query].downcase}%")

            
            #Processo.joins(:Pessoa).where("name LIKE ?", "%#{params[:query].downcase}%").select('processos.*')
            render "home"
            #@query = Processos.
        end   
    end
end
