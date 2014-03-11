class PromotionCategoriesController < ApplicationController
  before_action :set_promotion_category, only: [:show, :edit, :update, :destroy]

  # GET /promotion_categories
  # GET /promotion_categories.json
  def index
    @promotion_categories = PromotionCategory.all
  end

  # GET /promotion_categories/1
  # GET /promotion_categories/1.json
  def show
  end

  # GET /promotion_categories/new
  def new
    @promotion_category = PromotionCategory.new
  end

  # GET /promotion_categories/1/edit
  def edit
  end

  # POST /promotion_categories
  # POST /promotion_categories.json
  def create
    @promotion_category = PromotionCategory.new(promotion_category_params)

    respond_to do |format|
      if @promotion_category.save
        format.html { redirect_to @promotion_category, notice: 'Promotion category was successfully created.' }
        format.json { render action: 'show', status: :created, location: @promotion_category }
      else
        format.html { render action: 'new' }
        format.json { render json: @promotion_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /promotion_categories/1
  # PATCH/PUT /promotion_categories/1.json
  def update
    respond_to do |format|
      if @promotion_category.update(promotion_category_params)
        format.html { redirect_to @promotion_category, notice: 'Promotion category was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @promotion_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /promotion_categories/1
  # DELETE /promotion_categories/1.json
  def destroy
    @promotion_category.destroy
    respond_to do |format|
      format.html { redirect_to promotion_categories_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_promotion_category
      @promotion_category = PromotionCategory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def promotion_category_params
      params.require(:promotion_category).permit(:promotion_id, :category_id)
    end
end
