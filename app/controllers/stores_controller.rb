class StoresController < ApplicationController
  before_action :authenticate_seller!
  before_action :load_store, only: [:edit, :update, :destroy]

  def new
    @store = Store.new
  end

  def show; end

  def create
    @store = current_seller.store.create(store_params)
    if @store.persisted?
      flash[:success] = 'Store was succesfully created'
      redirect_to sellers_dashboard_path
    else
      render :new
    end
  end

  def edit; end

  def update
    if @store.update?(store_params)
      flash[:success] = 'Store was succesfully updated'
      redirect_to sellers_dashboard_path
    else
      render :edit
    end
  end

  def destroy
  end

  private

  def store_params
    params.require(:store).permit(:name, :description)
  end

  def load_store
    @store = Store.find(params[:id])
  end
end
