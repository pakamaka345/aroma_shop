class FavouritesController < ApplicationController

  def create
    @favourite = current_user.favourites.create(product_id: params[:product_id])
    if @favourite.persisted?
      redirect_to product_path(params[:product_id]), notice: 'Продукт додано до улюблених'
    else
      redirect_to product_path(params[:product_id]), alert: 'Помилка при додаванні продукту до улюблених'
    end
  end

  def destroy
    @favourite = current_user.favourites.find_by(product_id: params[:product_id])
    if @favourite&.destroy
      redirect_to product_path(params[:product_id]), notice: 'Продукт видалено з улюблених'
    else
      redirect_to product_path(params[:product_id]), alert: 'Помилка при видаленні продукту з улюблених'
    end
  end

  def index
    @favourites = current_user.favourites
    render 'favourites'
  end
end
