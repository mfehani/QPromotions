class PromotionsController < ApplicationController
  before_action :set_promotion, only: [:show, :edit, :update, :destroy]
  #devise gem<authentication , cancan gem<authorization
  

  # GET /promotions
  # GET /promotions.json
  def index
    @promotions = Promotion.all
#    format.json { render json: @name }
  end

  # GET /promotions/1
  # GET /promotions/1.json
  def show
    @promotion = Promotion.find(params[:id])
  end

  # GET /promotions/new
  def new
    @promotion = Promotion.new
  end

  # GET /promotions/1/edit
  def edit
    @promotion = Promotion.find(params[:id])
  end

  # POST /promotions
  # POST /promotions.json
  def create
    
    @promotion = Promotion.new(promotion_params)
  #  @promotion.user =current_user
  @promotion.user_id=current_user.id
    respond_to do |format|
      if @promotion.save
        for category in params[:categories_to_be_added]
          c=Category.find(category)
          @promotion.categories << c            
        end
        for branch in params[:branches_to_be_added]
          b=Branch.find(branch)
          @promotion.branches << b
        end
        #in here
        for tag in params[:tags_to_be_added].split
          x=Tag.find_by_name(tag)
          if x.nil?
            @tag= Tag.new(name: tag)
            @promotion.tags << @tag
          else
            @promotion.tags << x
          end
        end
        #for tag in incoming tags
        #create a new tag
        #add to promotion
        #else
        #just add it to the promotions
        #end
        format.html { redirect_to @promotion, notice: 'Promotion was successfully created.' }
        format.json { render action: 'show', status: :created, branch: @promotion } #status jbuilder
      else
        format.html { render action: 'new' }
        format.json { render json: @promotion.errors, status: :unprocessable_entity }
      end
    end
  end

  def search
    @tags = Tag.search params[:search]
    @promotions = Array.new
    for i in @tags
      puts i.promotions.first.name
      for j in i.promotions
        @promotions << j
        puts j.name
      end
    end
    puts "blah"
    puts @promotions.first
    puts "blaaaah"
  end

  def gettags
    @promotion = Promotion.find(params[:id]) #?id=4
    
    
  end
  # PATCH/PUT /promotions/1
  # PATCH/PUT /promotions/1.json
  def update
    respond_to do |format|
      if @promotion.update(promotion_params)
        format.html { redirect_to @promotion, notice: 'Promotion was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @promotion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /promotions/1
  # DELETE /promotions/1.json
  def destroy
    @promotion.destroy
    respond_to do |format|
      format.html { redirect_to promotions_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_promotion
      @promotion = Promotion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def promotion_params
      params.require(:promotion).permit(:name, :discount, :branch, :category, :description, :end_date)
    end
end
