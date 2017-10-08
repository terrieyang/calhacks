class Recipe < ApplicationRecord
	has_and_belongs_to_many :ingredients
	accepts_nested_attributes_for :ingredients, :allow_destroy => true
	validates_presence_of :name



end
