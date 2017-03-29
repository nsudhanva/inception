class Routine < ApplicationRecord
	has_many :activities
	belongs_to :routine_type
end
