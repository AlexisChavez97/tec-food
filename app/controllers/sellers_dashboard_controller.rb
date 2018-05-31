class SellersDashboardController < ApplicationController
  before_action :authenticate_seller!
  before_action :load_store, only: [:show]

  def index
    @store = current_seller.store
  end

  def show; end

  private

  def load_store
    @store = Store.find(params[:id])
  end
end