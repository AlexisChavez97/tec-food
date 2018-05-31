class MenuController < ApplicationController
  before_action :authenticate_buyer!
  before_action :load_store, only: [:show]

  def index
    @stores = Store.all
  end

  def show; end

  private

  def load_store
    @store = Store.find(params[:id])
  end
end
