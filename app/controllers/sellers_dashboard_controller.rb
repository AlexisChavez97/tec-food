class SellersDashboardController < ApplicationController
  before_action :authenticate_seller!
  before_action :load_store, only: [:show]

  def index
    @stores = current_seller.stores
  end

  def show; end

  private

  def load_store
    @store = Store.find(params[:id])
  end
end