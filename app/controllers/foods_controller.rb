class FoodsController < ApplicationController
  def index
    @foods = Food.order(:created_at)
  end

  def new; end

  def create; end

  def show; end

  def edit; end

  def update; end

  def destroy; end
end
