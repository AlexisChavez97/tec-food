class ProductsController < ApplicationController
  before_action :load_product, only: [:edit, :update, :destroy]

  def new
    @product = Product.new
  end

  def index
    @products = current_seller.products
  end

  def show; end

  def create
    @product = current_seller.products.create(product_params)
    if @product.persisted?
      flash[:success] = 'Product was succesfully created'
      redirect_to products_path
    else
      render :new
    end
  end

  def edit; end

  def update
    if @product.update?(product_params)
      flash[:success] = 'Product was succesfully updated'
      redirect_to products_path
    else
      render :edit
    end
  end

  def destroy
    if @product.destroy
      flash[:danger] = 'Product deleted'
      redirect_to products_path
    else
      redirect_to products_path
    end
  end

  private

  def load_product
    @product = Product.find(params[:id])
  end

  def products_params
    params.require(:product).permit(:name, :price, :description)
  end
end
