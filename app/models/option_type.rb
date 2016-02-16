class OptionType < ActiveRecord::Base
	has_many :product_option_typeships
	has_many :products, :through => product_option_typeships

	#has_many :option_values, dependent: :destroy
end
