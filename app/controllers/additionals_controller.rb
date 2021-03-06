class AdditionalsController < ApplicationController
  before_action :set_additional, only: %i[ show edit update destroy ]

  # GET /additionals or /additionals.json
  def index
    @additionals = Additional.all
  end

  # GET /additionals/1 or /additionals/1.json
  def show
   
  end

  # GET /additionals/new
  def new
    @additional = Additional.new
    @productId = params[:product_id]
  end

  # GET /additionals/1/edit
  def edit
  end

  # POST /additionals or /additionals.json
  def create
    @additional = Product.find(params[:product_id]).build_Additional(additional_params)

    respond_to do |format|
      if @additional.save
        format.html { redirect_to root_path, notice: "Additional was successfully created." }
        format.json { render :show, status: :created, location: @additional }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @additional.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /additionals/1 or /additionals/1.json
  def update
    respond_to do |format|
      if @additional.update(additional_params)
        format.html { redirect_to @additional, notice: "Additional was successfully updated." }
        format.json { render :show, status: :ok, location: @additional }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @additional.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /additionals/1 or /additionals/1.json
  def destroy
    @additional.destroy
    respond_to do |format|
      format.html { redirect_to additionals_url, notice: "Additional was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_additional
      @additional = Additional.find_by(product_id:params[:product_id])
      
    end

    # Only allow a list of trusted parameters through.
    def additional_params
      params.require(:additional).permit(:color, :product_age, :imperfections, :waranty, :condition, :product_id)
      
    end
end
