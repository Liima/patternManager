class BooksPattern < ActiveRecord::Base
belongs_to :pattern
belongs_to :book
end
