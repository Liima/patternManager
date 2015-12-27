class CreatePatternSchema < ActiveRecord::Migration
  def change
    create_table :patterns do |t|
		t.string :name, null: false
		t.float :mingauge, null: false
		t.float :maxgauge, null: false
    end

	create_table :books do |t|
		t.string :title, null: false
	end

	create_table :categories do |t|
		t.string :name
		t.integer :parent_id, null: true, index: true
		t.integer :lft, null: false, index: true
		t.integer :rgt, null: false, index: true
		t.integer :depth, null: false, default: 0
		t.integer :children_count, null: false, default: 0
	end

	create_table :books_patterns do |t|
		t.integer :page_number, null: false, default: 0
		t.belongs_to :patterns, index: true
		t.belongs_to :books, index: true
	end
  end
end
