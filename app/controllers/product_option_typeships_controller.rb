class ProductOptionTypeshipsController < ApplicationController
  before_action :set_product_option_typeship, only: [:show, :edit, :update, :destroy]

  # GET /product_option_typeships
  # GET /product_option_typeships.json
  def index
    @product_option_typeships = ProductOptionTypeship.all
  end

  # GET /product_option_typeships/1
  # GET /product_option_typeships/1.json
  def show
  end

  # GET /product_option_typeships/new
  def new
    @product_option_typeship = ProductOptionTypeship.new
  end

  # GET /product_option_typeships/1/edit
  def edit
  end

  # POST /product_option_typeships
  # POST /product_option_typeships.json
  def create
    @product_option_typeship = ProductOptionTypeship.new(product_option_typeship_params)

    respond_to do |format|
      if @product_option_typeship.save
        format.html { redirect_to @product_option_typeship, notice: 'Product option typeship was successfully created.' }
        format.json { render :show, status: :created, location: @product_option_typeship }
      else
        format.html { render :new }
        format.json { render json: @product_option_typeship.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /product_option_typeships/1
  # PATCH/PUT /product_option_typeships/1.json
  def update
    respond_to do |format|
      if @product_option_typeship.update(product_option_typeship_params)
        format.html { redirect_to @product_option_typeship, notice: 'Product option typeship was successfully updated.' }
        format.json { render :show, status: :ok, location: @product_option_typeship }
      else
        format.html { render :edit }
        format.json { render json: @product_option_typeship.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /product_option_typeships/1
  # DELETE /product_option_typeships/1.json
  def destroy
    @product_option_typeship.destroy
    respond_to do |format|
      format.html { redirect_to product_option_typeships_url, notice: 'Product option typeship was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product_option_typeship
      @product_option_typeship = ProductOptionTypeship.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_option_typeship_params
      params.require(:product_option_typeship).permit(:product_id, :option_type_id)
    end
end
