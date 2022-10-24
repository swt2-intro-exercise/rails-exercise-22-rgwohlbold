class AuthorController < ApplicationController
    def new
        @author = Author.new
    end

    def show
        @author = Author.find(params[:id])
    end
end
