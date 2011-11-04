class ChangeSignatureType < ActiveRecord::Migration
  def self.up
    change_column :contracts, :signature, :text
  end

  def self.down
    change_column :contracts, :signature, :binary
  end
end
