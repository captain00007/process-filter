class SearchesController < ApplicationController
    def search_processes
        @processos = Processo.all
        print params[:query]
        #binding.break
        #if params[:query].present?
        #    @advogado = Pessoa.where("nome LIKE ?", "%#{params[:query].downcase}%")
            #@query=params[:query]
        #end    
    end
end
