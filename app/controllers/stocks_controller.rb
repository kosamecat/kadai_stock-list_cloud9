class StocksController < ApplicationController
  def index
      @stocks = Stock.all
  end

  def show
      @stock = Stock.find(params[:id])
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
      flash.now[:danger] = '在庫 が追加されませんでした'
      render :new
    end
  end
  
  def edit
    @stock = Stock.find(params[:id])
  end
  
  def update
    @stock = Stock.find(params[:id])

    if @stock.update(stock_params)
      flash[:success] = '在庫 は正常に更新されました'
      redirect_to @stock
    else
      flash.now[:danger] = '在庫 は更新されませんでした'
      render :edit
    end
  end

  def destroy
    @stock = Stock.find(params[:id])
    @stock.destroy

    flash[:success] = '在庫 は正常に削除されました'
    redirect_to root_url
  end
  
  private

  # Strong Parameter
  def stock_params
    params.require(:stock).permit(:name)
  end
  
end
