class ItemsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    @items = Item.all

    respond_to do |format|
      format.html
      format.json {render :json => @items}
    end
  end

  def show
    @item = Item.find(params[:id])
    respond_to do |format|
      format.html
      format.json {render :json => @item}
    end
  end

  def edit
    @item = Item.find(params[:id])
  end

  def update
    item = Item.find(params[:id])
    respond_to do |format|
      if item.update!(item_params)
        format.html { redirect_to item_path(item), notice: 'Item was successfully updated.' }
        format.json { render :json => item}
      else
        format.html { render :edit }
        format.json { render :json => {errors: item.errors}, status: :unprocessable_entity }
      end
    end
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    respond_to do |format|
      if @item.save
        format.html { redirect_to @item, notice: 'Item was successfully created.' }
        format.json { render :json => @item}
      else
        format.html { render :new }
        format.json { render :json => {errors: @item.errors}, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @item = Item.find(params[:id])
    respond_to do |format|
      if @item.destroy
        format.html { redirect_to items_path, notice: 'Item was successfully destroyed.' }
        format.json { render :json => @item}
      else
        format.html { render :show }
        format.json { render :json => {errors: @item.errors}, status: :unprocessable_entity }
      end
    end
  end

  private
  def item_params
    params.require(:item).permit(:name)
  end
end
