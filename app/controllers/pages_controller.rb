class PagesController < ApplicationController
    def home
        @searching = false
    end 

    def searches
        if params[:query].present?
            @query = params[:query]
            @searching = true
            @lawyers = Pessoa.where("nome LIKE ?", "#{params[:query].downcase}")
            if @lawyers.count > 0
                @processes = Processo.joins("INNER JOIN pessoas ON pessoas.id = processos.advogado_id WHERE pessoas.nome LIKE '#{params[:query].downcase}'")
            end
        end 
        render "home" 
    end
end
