class ApplicationController < ActionController::Base
    helper_method :search_client
    def search_client(id)
        return @client = Pessoa.find(id)
    end
end
