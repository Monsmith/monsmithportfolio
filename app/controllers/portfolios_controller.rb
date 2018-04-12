class PortfoliosController < ApplicationController
  layout 'portfolio'

  before_action :set_portfolio_item, only: [:show, :edit, :update, :destroy]
  def index
    @portfolio_items = Portfolio.all
  end
  def new
    @portfolio_item = Portfolio.new
  end
  def create
    @portfolio_item = Portfolio.new(portfolio_params)

    respond_to do |format|
      if @portfolio_item.save
        format.html { redirect_to portfolios_path, notice: 'Portfolio was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end
  def show

  end



  private
  def portfolio_params
    params.require(:portfolio).permit(:title,
                                  :subtitle,:body,
                                  :main_image,:thumn_image,
                                      )
  end
  def set_portfolio_item
    @portfolio_item = Portfolio.find(params[:id])
  end
end