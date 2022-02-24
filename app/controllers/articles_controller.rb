class ArticlesController < ApplicationController
  def create
    @article = Article.new(article_params)
    if @article.save
      flash[:success] = "Artigo salvo com sucesso"
    else
      flash[:error] = "Erro ao salvar o Artigo, verifique os campos"
    end
    redirect_to root_path
  end

  private

  def article_params
    params.require(:article).permit(:title, :content)
  end
end
