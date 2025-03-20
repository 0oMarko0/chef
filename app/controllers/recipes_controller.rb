# frozen_string_literal: true

class RecipesController < ApplicationController
  before_action :set_recipe, only: [:edit, :destroy]

  def index
    @recipes = Recipe.order(created_at: :desc)
  end

  def new
    @recipe = Recipe.new
  end

  def edit
    @recipe = Recipe.find(params[:id])
  end

  def create
    @recipe = Recipe.new(recipe_params)

    if @recipe.save
      redirect_to recipes_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @recipe = Recipe.find(params[:id])
    @recipe.destroy

    redirect_to recipes_path
  end

  private

  def recipe_params
    params.require(:recipe).permit(:title, :description)
  end

  def set_recipe
    @recipe = Recipe.find(params[:id])
  end
end
