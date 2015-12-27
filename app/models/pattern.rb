class Pattern < ActiveRecord::Base
	has_one :book through: :books_patterns
	has_one :books_pattern
end
