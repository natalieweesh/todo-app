class ItemsController < ApplicationController

  def new
    @item = Item.new
    @project_id = params[:project_id]
  end
  
  def create
    @item = Item.new(params[:item])
    if @item.save
      redirect_to item_url(@item.id)
    else
      render :new
    end
  end

  def edit
    @item = Item.find(params[:id])
  end
  
  def update
    @item = Item.find(params[:id])
    if @item.update_attributes(params[:item])
      redirect_to item_url(@item.id)
    else
      render :edit
    end
  end
  
  def show
    @item = Item.find(params[:id])
  end
  
  def index
    @project_id = params[:project_id]
    @items = Item.where('project_id = ?', @project_id)
  end

end
