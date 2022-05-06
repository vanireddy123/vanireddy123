class AddCityToList < ActiveRecord::Migration[7.0]
  def change
    add_column :lists, :city, :string, array: true, default: []
    
  end
end
