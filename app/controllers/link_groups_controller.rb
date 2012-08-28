class LinkGroupsController < ApplicationController
  respond_to :json

  def index
    respond_with LinkGroup.all
  end

  def show
  end
end
