# frozen_string_literal: true

class ArticleReflex < ApplicationReflex
  before_reflex do
    @article = Article.new
    @article.assign_attributes(article_params)
  end

  def create
    if @article.save
      flash[:success] = "Artigo salvo com sucesso"
    else
      flash[:error] = "Erro ao salvar o Artigo, verifique os campos"
    end
    morph "#form", render(partial: "articles/form", locals: { article: @article, flash: flash })
  end

  private

  def article_params
    params.require(:article).permit(:title, :content)
  end
end
