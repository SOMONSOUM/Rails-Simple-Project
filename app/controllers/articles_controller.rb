class ArticlesController < ApplicationController
    def index
        # SELECT  `articles`.* FROM `articles`
        @articles = Article.all    
    end

    def show
        # SELECT  `articles`.* FROM `articles` WHERE `articles`.`id` = id
        @article = Article.find(params[:id])
    end

    def edit
        @article = Article.find(params[:id])
    end

    def new
        @article=Article.new
    end
   
    def create
        # You need to make sure that your submmision is secure, so you have validate the data submition
        # @article = Article.new(params.require(:article).permit(:title, :text))
 
        # After you have created a article then you have to save it to db
        # @article.save
        # Redirect to route "article/new/id"
        # redirect_to @article
        @article = Article.new(article_params)
        if @article.save
            # redirect_to articles_path
            redirect_to @article 
        else
            render 'new'
            # redirect_to new_article_path
        end

    end

    private
    def article_params
        params.require(:article).permit(:title, :text)
    end
end