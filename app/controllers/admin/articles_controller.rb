module Admin
  class ArticlesController < ApplicationController
    before_action :set_article, only: %i[edit update destroy]

    def index
      @articles = Article.all
    end

    def new
      @article = Article.new
    end

    def edit; end

    def create
      @article = Article.new(article_params)

      if @article.save
        redirect_to %i[admin articles], notice: 'Article was successfully created.'
      else
        render :new
      end
    end

    def update
      if @article.update(article_params)
        redirect_to %i[admin articles], notice: 'Article was successfully updated.'
      else
        render :edit
      end
    end

    def destroy
      @article.destroy
      redirect_to %i[admin articles], notice: 'Article was successfully destroyed.'
    end

    private

    def set_article
      @article = Article.find(params[:id])
    end

    def article_params
      params.require(:article).permit(:content, :published, :title)
      # params.fetch(:article, {})
    end
  end
end
