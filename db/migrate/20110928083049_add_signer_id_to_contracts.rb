class AddSignerIdToContracts < ActiveRecord::Migration
  def self.up
    add_column :contracts, :signer_id, :int
  end

  def self.down
    remove_column :contracts, :signer_id
  end
end
