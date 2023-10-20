class PagesController < ApplicationController
    def home
    end 

    def searches
        if params[:query].present?
            @lawyer = Pessoa.where("nome LIKE ?", "#{params[:query].downcase}")
            print "lawyer:#{@lawyer.count}"
            if @lawyer.count > 0
                @processes = Processo.joins("INNER JOIN pessoas ON pessoas.id = processos.advogado_id WHERE pessoas.nome LIKE '#{params[:query].downcase}'")
                @query = params[:query]
            end
            render "home" 
        end   
    end
end
