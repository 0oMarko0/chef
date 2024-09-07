# frozen_string_literal: true

class RecipesController < ApplicationController
  def index
    @recipes = Recipe.all
  end

  def new
    recipe = Recipe.new(title: params[:title], description: params[:description])
    recipe.save
  end
end
