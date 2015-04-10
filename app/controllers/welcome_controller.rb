class WelcomeController < ApplicationController
  before_filter :authenticate_user!, :except => [:show, :index]
  def index
    @articles = Article.page(params[:id]).per(10)
  end
end
