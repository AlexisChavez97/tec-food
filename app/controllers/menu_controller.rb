class MenuController < ApplicationController
  def index
    @stores = Store.all
  end
end
