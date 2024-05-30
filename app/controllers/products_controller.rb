class ProductsController < ApplicationController
  def index
    @categories = Category.all
    if params[:category_id]
      @products = Product.where(category_id: params[:category_id])
    elsif params[:subcategory_id]
      @products = Product.where(subcategory_id: params[:subcategory_id])
    else
      @products = Product.all
    end
  end

  def category
    @categories = Category.all
    @subcategories = Subcategory.where(category_id: params[:category_id])
    @products = Product.where(category_id: params[:category_id])
    render :index
  end

  def subcategory
    @categories = Category.all
    subcategory = Subcategory.find(params[:subcategory_id])
    @subcategories = Subcategory.where(category_id: subcategory.category_id)
    @products = Product.where(subcategory_id: params[:subcategory_id])
    render :index
  end

  def show
    @product = Product.find(params[:id])
    @reviews = @product.reviews
  end
end
