class PromotionBranchesController < ApplicationController
  before_action :set_promotion_branch, only: [:show, :edit, :update, :destroy]

  # GET /promotion_branches
  # GET /promotion_branches.json
  def index
    @promotion_branches = PromotionBranch.all
  end

  # GET /promotion_branches/1
  # GET /promotion_branches/1.json
  def show
  end

  # GET /promotion_branches/new
  def new
    @promotion_branch = PromotionBranch.new
  end

  # GET /promotion_branches/1/edit
  def edit
  end

  # POST /promotion_branches
  # POST /promotion_branches.json
  def create
    @promotion_branch = PromotionBranch.new(promotion_branch_params)

    respond_to do |format|
      if @promotion_branch.save
        format.html { redirect_to @promotion_branch, notice: 'Promotion branch was successfully created.' }
        format.json { render action: 'show', status: :created, location: @promotion_branch }
      else
        format.html { render action: 'new' }
        format.json { render json: @promotion_branch.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /promotion_branches/1
  # PATCH/PUT /promotion_branches/1.json
  def update
    respond_to do |format|
      if @promotion_branch.update(promotion_branch_params)
        format.html { redirect_to @promotion_branch, notice: 'Promotion branch was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @promotion_branch.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /promotion_branches/1
  # DELETE /promotion_branches/1.json
  def destroy
    @promotion_branch.destroy
    respond_to do |format|
      format.html { redirect_to promotion_branches_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_promotion_branch
      @promotion_branch = PromotionBranch.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def promotion_branch_params
      params.require(:promotion_branch).permit(:branch_id, :promotion_id)
    end
end
