class StocksController < ApplicationController
  before_action :set_stock, only: [:show, :edit, :update, :destroy]
  
  def index
      @stocks = Stock.all.order("name ASC")
  end

  def show
  end

  def new
    @stock = Stock.new
  end

  def create
    @stock = Stock.new(stock_params)

    if @stock.save
      flash[:success] = '在庫 が正常に追加されました'
      redirect_to @stock
    else
      flash.now[:danger] = 'ERROR'
      render :new
    end
  end
  
  def edit
  end
  
  def update
    if @stock.update(stock_params)
      flash[:success] = '在庫 は正常に更新されました'
      redirect_to @stock
    else
      flash.now[:danger] = 'ERROR'
      render :edit
    end
  end

  def destroy
    @stock.destroy

    flash[:success] = '在庫 は正常に削除されました'
    redirect_to root_url
  end
  
  private

 
  
  def set_stock
    @stock = Stock.find(params[:id])
  end
  
   # Strong Parameter
  def stock_params
    params.require(:stock).permit(:name, :price, :amount)
  end
  
end
