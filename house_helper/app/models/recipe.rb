class Recipe < ApplicationRecord
	has_many :ingredients
	accepts_nested_attributes_for :ingredients, :allow_destroy => true
	validates_presence_of :name

end
