class ItemsController < ApplicationController
  before_action :set_item, only: %i[ show destroy ]

  def index
    @items = Item.all
  end

  def show
  end

  def destroy
    @item.destroy
    redirect_to items_path, notice: "Item was successfully destroyed."
  end

  private
  def set_item
    @item = Item.find(params[:id])
  end
end
