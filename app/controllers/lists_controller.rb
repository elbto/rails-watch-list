class ListsController < ApplicationController
  before_action :find_by_id, only: [:show, :edit, :update, :destroy]

  def index
    @lists = List.all
  end

  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)
    if @list.save
      redirect_to list_path(@list)
    else
      render :new
    end
  end

  def destroy
    @list.destroy
    redirect_to lists_path
  end

  def update
    @list.update(list_params)
    redirect_tolist_path(@list)
  end

  private

  def list_params
    params.require(:list).permit(:name)
  end

  def find_by_id
    @list = List.find(params[:id])
  end
end
