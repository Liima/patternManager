class Book < ActiveRecord::Base

	has_many :patterns through: :books_patterns
	has_many :books_patterns
end
