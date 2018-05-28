class MenuController < ApplicationController
  before_action :authenticate_buyer!

  def index
    @stores = Store.all
  end
end
