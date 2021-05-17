class VariationWeightsController < ApplicationController
  before_action :set_variation_weight, only: %i[ show edit update destroy ]

  # GET /variation_weights or /variation_weights.json
  def index
    @variation_weights = VariationWeight.all
  end

  # GET /variation_weights/1 or /variation_weights/1.json
  def show
  end

  # GET /variation_weights/new
  def new
    @variation_weight = VariationWeight.new
  end

  # GET /variation_weights/1/edit
  def edit
  end

  # POST /variation_weights or /variation_weights.json
  def create
    @variation_weight = VariationWeight.new(variation_weight_params)

    respond_to do |format|
      if @variation_weight.save
        format.html { redirect_to @variation_weight, notice: "Variation weight was successfully created." }
        format.json { render :show, status: :created, location: @variation_weight }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @variation_weight.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /variation_weights/1 or /variation_weights/1.json
  def update
    respond_to do |format|
      if @variation_weight.update(variation_weight_params)
        format.html { redirect_to @variation_weight, notice: "Variation weight was successfully updated." }
        format.json { render :show, status: :ok, location: @variation_weight }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @variation_weight.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /variation_weights/1 or /variation_weights/1.json
  def destroy
    @variation_weight.destroy
    respond_to do |format|
      format.html { redirect_to variation_weights_url, notice: "Variation weight was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_variation_weight
      @variation_weight = VariationWeight.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def variation_weight_params
      params.require(:variation_weight).permit(:weight, :date)
    end
end
