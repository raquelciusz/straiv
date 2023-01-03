class ItemsController < ApplicationController
  before_action :set_item, only: %i[ show destroy ]

  def index
    @items = Item.all
  end

  def show
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to @item, notice: "Item was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @item.destroy
    redirect_to items_path, notice: "Item was successfully destroyed."
  end

  private

  def item_params
    params.require(:item).permit(:id, :name)
  end

  def set_item
    @item = Item.find(params[:id])
  end
end
