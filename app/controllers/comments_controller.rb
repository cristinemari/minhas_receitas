class CommentsController < ApplicationController
  
  # def create
  #   @recipe = Recipe.find (params[:recipe_id])
  #   unless @recipe.comments.create(params[:comment])
  #  	  redirect_to @recipe, flash[:alert] = 'Fail to receive the comment. Double check the fields.'
  #   else
  #   	redirect_to @recipe
  #   end
  # end
  def create
    @recipe = Recipe.find(params[:recipe_id])
    @comment = @recipe.comments.build(params[:comment])
    flash[:alert] = 'Fail to receive the comment. Double check the fields' unless @comment.save 

    redirect_to @recipe
  end

end
