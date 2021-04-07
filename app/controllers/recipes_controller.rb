class RecipesController < ApplicationController
	
	def index
		@recipes = Recipe.created_at
	end


	def show
		@recipe = recipe_find #private
	end

	def edit
		@recipe = recipe_find #private
	end

	def update
		@recipe = recipe_find #private
		@recipe.update(recipe_params) #private
		redirect_to @recipe
	end

	def new
		@recipe = Recipe.new
	end

	def create
		@recipe = Recipe.new(recipe_params) #private
		@recipe.save
		redirect_to @recipe
	end

	def destroy
		@recipe = recipe_find #private
		@recipe.destroy
		redirect_to recipes_url
	end
end

#Ao criar um private com as informações, colocamos em pratica o metodo D.R.Y do ruby
private
def recipe_params
	params.require(:recipe).permit(:name, :stuff, :calories, :prepare_mode, :cost, :kind, :portion, :duration, :poster)
end

def recipe_find
	Recipe.find(params[:id])
end
