class SellersDashboardController < ApplicationController
  before_action :authenticate_seller!

  def home; end
end
