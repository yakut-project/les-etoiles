class AddNameToProfile < ActiveRecord::Migration
  def change
    add_column :profiles, :name, :string
    add_column :profiles, :surname, :string
  end
end
