class CreateListsCitiesJoinTable < ActiveRecord::Migration[7.0]
  def self.up
  # Model names in alphabetical order (e.g. a_b)
  create_table :cities_lists, :id => false do |t|
    t.integer :city_id
    t.integer :list_id
  end

  add_index :cities_lists, [:city_id, :list_id]
 end

 def self.down
  drop_table :cities_lists
 end
end
