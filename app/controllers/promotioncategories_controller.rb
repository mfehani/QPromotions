class PromotioncategoriesController < ApplicationController
  before_action :set_promotioncategory, only: [:show, :edit, :update, :destroy]

  # GET /promotioncategories
  # GET /promotioncategories.json
  def index
    @promotioncategories = Promotioncategory.all
  end

  # GET /promotioncategories/1
  # GET /promotioncategories/1.json
  def show
  end

  # GET /promotioncategories/new
  def new
    @promotioncategory = Promotioncategory.new
  end

  # GET /promotioncategories/1/edit
  def edit
  end

  # POST /promotioncategories
  # POST /promotioncategories.json
  def create
    @promotioncategory = Promotioncategory.new(promotioncategory_params)

    respond_to do |format|
      if @promotioncategory.save
        format.html { redirect_to @promotioncategory, notice: 'Promotioncategory was successfully created.' }
        format.json { render action: 'show', status: :created, location: @promotioncategory }
      else
        format.html { render action: 'new' }
        format.json { render json: @promotioncategory.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /promotioncategories/1
  # PATCH/PUT /promotioncategories/1.json
  def update
    respond_to do |format|
      if @promotioncategory.update(promotioncategory_params)
        format.html { redirect_to @promotioncategory, notice: 'Promotioncategory was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @promotioncategory.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /promotioncategories/1
  # DELETE /promotioncategories/1.json
  def destroy
    @promotioncategory.destroy
    respond_to do |format|
      format.html { redirect_to promotioncategories_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_promotioncategory
      @promotioncategory = Promotioncategory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def promotioncategory_params
      params.require(:promotioncategory).permit(:promotion_id, :category_id)
    end
end
