class HomesController < ApplicationController
  #doorkeeper_for :all


  def index
    @articles = Article.order('created_at desc').limit 6
  end

  def show
    redirect_to :action => 'index'

  end

  def new
  end
end
