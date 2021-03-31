class RecipesController < ApplicationController
	def index
		@recipes = [ 'Strogonoff', 'Filé de frango a milanesa', 'Salmão ao forno', 'Bacalhau ao forno']
	end
end
