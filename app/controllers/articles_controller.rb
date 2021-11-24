class ArticlesController < ApplicationController
    before_action :find_article, except: [:new,:create,:index]
    
    def index
    @article = Article.all
    end
    
    
    def show 
    end     
    
    def edit
    end
    
    def update
        @article.update(title: params[:article][:title], content: params[:article] [:content])
        
        redirect_to @article
    end

    def new
        @article = Article.new
        @article.title = "Demo"
    end

    def create 
        render json: @article
    end

    def destroy
        @article.destroy
        redirect_to root_path
    end 
    
    def find_article
        @article = Article.find (params[:id]) 
    end
end