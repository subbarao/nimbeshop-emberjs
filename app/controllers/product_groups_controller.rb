class ProductGroupsController < ApplicationController
  respond_to :json
  def index
    respond_with ProductGroup.all
  end

  def show
  end
end
