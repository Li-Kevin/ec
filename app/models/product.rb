class Product < ActiveRecord::Base
	belongs_to :store
	
	#has_many :product_option_typeships
	#has_many :option_types, :through => product_option_typeships
end
