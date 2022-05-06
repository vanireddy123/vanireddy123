class CreateListingsCitiesJoinTable < ActiveRecord::Migration[7.0]
  def self.up
  # Model names in alphabetical order (e.g. a_b)
  create_table :listins_users, :id => false do |t|
    t.integer :category_id
    t.integer :user_id
  end

  add_index :categories_users, [:category_id, :user_id]
	end

	def self.down
  	drop_table :categories_users
	end
end
