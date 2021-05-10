class DietsController < ApplicationController
  before_action :set_diet, only: %i[ show edit update destroy ]
  before_action :authenticate_user!

  def index
    @diets = Diet.all
  end

  def show
  end

  def new
    @diet = Diet.new
  end

  def edit
  end

  def create
    @diet = Diet.new(diet_params)

    respond_to do |format|
      if @diet.save
        format.html { redirect_to @diet, notice: "Diet was successfully created." }
        format.json { render :show, status: :created, location: @diet }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @diet.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @diet.update(diet_params)
        format.html { redirect_to @diet, notice: "Diet was successfully updated." }
        format.json { render :show, status: :ok, location: @diet }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @diet.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @diet.destroy
    respond_to do |format|
      format.html { redirect_to diets_url, notice: "Diet was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    def set_diet
      @diet = Diet.find(params[:id])
    end

    def diet_params
      params.require(:diet).permit(:person_id, :initial_date, :final_date)
    end
end
