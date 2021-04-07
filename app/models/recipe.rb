class Recipe < ApplicationRecord
	def light?
		calories < 100
	end


	def self.created_at
		where('created_at <= ?', Time.now).order('created_at desc')
	end
   
		# Pesquisa no BD - que retorna uma colection
    
		# Recipe.created_at.tosql <= 

   def prepare_duration
   		begin
   			duration.strftime('%H: %M')
   		rescue
   			"  "
   		end

   		


   end


end