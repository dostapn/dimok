class HomeController < ApplicationController
  def index
    @categories = Category.order(:name)
    @flavor_groups = FlavorGroup.order(:name)
  end
end
