class Rou::HomesController < Rou::ApplicationController
  before_filter :current_user_info
  def index

  end

  def show
    redirect_to :action => 'index'
  end

  def new
  end
end
