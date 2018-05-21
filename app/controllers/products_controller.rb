class Products < ApplicationController

  def new
    @product = Product.new
  end

  def index
    @products = Product.all
  end

  def show
    @product = Product.find[:id]
  end

  def create

  end

  def edit
    @product = Product.find[:id]
  end

  def update

  end

  def destroy
  end
end
