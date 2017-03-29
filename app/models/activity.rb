class Activity < ApplicationRecord
	has_many :activity_categories
	has_many :categories, through: :activity_categories
	
	belongs_to :routine
end
