class RecipesController < ApplicationController
	def index
		@recipes = [ 'Strogonoff de carne', 'Filé de frango a milanesa', 'Salmão ao forno', 'Bacalhau ao forno']
	end
end
