require 'csv'
class Ingredient < ApplicationRecord

	validates :name, uniqueness: true, presence: true
	validates :location, uniqueness: false
	validates :category, uniqueness: false
	# has_and_belongs_to_many :recipes
	# has_and_belongs_to_many :inventories
	belongs_to :recipes

	def self.populate
	  	csv_file = Rails.root + 'lib/assets/ingredients.csv'
		csv_text = File.read(csv_file)
		csv = CSV.parse(csv_text, :headers => true)
		csv.each do |row|
			fields = row.to_hash
			ingredient = Ingredient.new
			ingredient.name = fields["name"]
			ingredient.location = fields["location"]
			ingredient.category = fields["category"]
			ingredient.save
		end
	end
end
