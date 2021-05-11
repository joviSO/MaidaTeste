class DashboardController < ApplicationController
  before_action :authenticate_user!

  def index
    @people = Person.all
    @diets = Diet.all
    @meals = Meal.all
  end

  def new_diet
    @diet = Diet.new
  end

  def new_meal
    @meal = Meal.new
  end

  def create_diet
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

  def create_meal
    @meal = Meal.new(meal_params)

    respond_to do |format|
      if @meal.save
        format.html { redirect_to @meal, notice: "Meal was successfully created." }
        format.json { render :show, status: :created, location: @meal }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @meal.errors, status: :unprocessable_entity }
      end
    end
  end

  private
  def set_diet
    @diet = Diet.find(params[:id])
  end

  def diet_params
    params.require(:diet).permit(:person_id, :initial_date, :final_date)
  end

  def set_meal
    @meal = Meal.find(params[:id])
  end

  def meal_params
    params.require(:meal).permit(:diet_id, :meal_kind, :description)
  end
end
