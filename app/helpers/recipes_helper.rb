module RecipesHelper
	def formata_caloria(recipe)
		if recipe.Light?
			content_tag(:strong, "Light {menos de 100 calorias}")
		else
			recipe.calories
		end
	end
end
