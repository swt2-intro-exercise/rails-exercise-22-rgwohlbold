class AuthorController < ApplicationController

    def index
        @authors = Author.all
    end

    def new
        @author = Author.new
    end

    def show
        @author = Author.find(params[:id])
    end

    def create
        author_params = params.require(:author).permit(:first_name, :last_name, :homepage)
        @author = Author.new(author_params)
        if @author.save
            redirect_to root_path, notice: 'Success!'
        else
            render :new
        end
    end
end
