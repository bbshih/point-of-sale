class ProductsController < ApplicationController
  def index
    @products = Product.all
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @product }
    end
  end

  # GET /admin/products/1
  # GET /admin/products/1.json
  def show
    @product = Product.find(params[:id])
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @product }
    end
  end

end
