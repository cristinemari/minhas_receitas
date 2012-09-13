class RecipesController < ApplicationController

  before_filter :load_categories

  # GET /recipes
  # GET /recipes.json
  def index

    if params[:search].present?
      @recipes = Recipe.search(params[:search])
    else
      @recipes = Recipe.all
    end

    # @recipes = Recipe.scoped
    
    # @recipes = @category.recipes if @category.present?
    # @recipes = @recipes.published

    

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @recipes }
    end
  end

  # GET /recipes/1
  # GET /recipes/1.json
  def show
    # @recipe = Recipe.published.find(params[:id])
    @recipe = Recipe.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @recipe }
    end
  end

protected
  def load_categories
    @categories = Category.all
    @category   = Category.find(params[:category_id]) if params[:category_id]
  end

end
