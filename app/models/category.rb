class Category < ActiveRecord::Base
	acts_as_nested_set counter_cache: :children_count
	has_many :patterns
end
