class FoodsController < ApplicationController
  before_action :set_food, only: %i[edit update destroy]

  def index
    @foods = Food.includes(:user, :likes).order(:created_at)
  end

  def new
    @food = Food.new
  end

  def create
    food = current_user.foods.create!(food_params)
    redirect_to food
  end

  def show
    @food = Food.find(params[:id])
  end

  def edit; end

  def update
    @food.update!(food_params)
    redirect_to @food
  end

  def destroy
    @food.destroy!
    redirect_to root_path
  end

  private

  def food_params
    params.require(:food).permit(:name, :comment, :image)
  end

  def set_food
    @food = current_user.foods.find_by(id: params[:id])
    # rubocop:disable all
    redirect_to root_path, alert: "権限がありません" if @food.nil?
    # rubocop:enable all
  end
end
