class ArticlesController < ApplicationController
  before_action :set_article, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!, :except => [:show, :index]
  #before_filter :require_user


  def index
    #@articles = Article.where(user_id:current_user.id)
    @articles = Article.order('created_at DESC').page(params[:page]).per(2)
  end

  def show
  end

  def new
    @article = Article.new
  end

  def edit
    # Access Current User
    @articles = current_user.articles
  end

  def create
    @article = Article.new(article_params)
    #@article.user_id = current_user
    article_id = current_user.id

    respond_to do |format|
      if @article.save
        format.html { redirect_to @article, notice: 'Article was successfully created.' }
        @article.update_attributes!(:user_id => current_user.id)
        puts "-->#{@article.user_id}<--"
      else
        format.html { render :new }
      end
    end
  end

  def update
    respond_to do |format|
      if @article.update(article_params)
        format.html { redirect_to @article, notice: 'Article was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @article.destroy
    respond_to do |format|
      format.html { redirect_to articles_url, notice: 'Article was successfully destroyed.' }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_article
      @article = Article.find(params[:id])
      @comments = @article.comments.all
      @comment = @article.comments.build

    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def article_params
      params.require(:article).permit(:title, :description, :resume, :image, :user_id)
    end
end
