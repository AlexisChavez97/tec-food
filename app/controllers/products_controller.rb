class ProductsController < ApplicationController
  before_action :load_product, only: [:edit, :update, :destroy, :show]
  before_action :authenticate_seller!, except: [:show]
  before_action :authenticate_buyer!, only: [:show]


  def new
    @product = Product.new
  end

  def index
    @products = current_seller.store.products
  end

  def show
    @store = @product.store
  end

  def create
    @product = current_seller.store.products.create(products_params)
    if @product.save
      flash[:success] = 'Product was succesfully created'
      redirect_to sellers_dashboard_path
    else
      render :new
    end
  end

  def edit; end

  def update

    if @product.update(products_params)
      flash[:success] = 'Product was succesfully updated'
      redirect_to sellers_dashboard_path
    else
      render :edit
    end
  end

  def destroy
    if @product.destroy
      flash[:danger] = 'Product deleted'
      redirect_to sellers_dashboard_path
    else
      redirect_to sellers_dashboard_path
    end
  end

  private

  def load_product
    @product = Product.find(params[:id])
  end

  def products_params
    params.require(:product).permit(:name, :price, :description, :image)
  end
end
