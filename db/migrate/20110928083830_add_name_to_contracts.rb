class AddNameToContracts < ActiveRecord::Migration
  def self.up
    add_column :contracts, :name, :string
  end

  def self.down
    remove_column :contracts, :name
  end
end
