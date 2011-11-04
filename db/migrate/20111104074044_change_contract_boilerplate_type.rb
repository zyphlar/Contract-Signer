class ChangeContractBoilerplateType < ActiveRecord::Migration
  def self.up
    change_column :contracts, :boilerplate, :text
  end

  def self.down
    change_column :contracts, :boilerplate, :string
  end
end
