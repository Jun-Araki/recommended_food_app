class FoodsController < ApplicationController
  def index
    @foods = Food.includes(:user).order(:created_at)
  end

  def new; end

  def create; end

  def show; end

  def edit; end

  def update; end

  def destroy; end
end
