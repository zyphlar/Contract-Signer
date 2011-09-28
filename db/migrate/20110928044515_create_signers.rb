class CreateSigners < ActiveRecord::Migration
  def self.up
    create_table :signers do |t|
      t.string :first_name
      t.string :last_name
      t.string :cosigner

      t.timestamps
    end
  end

  def self.down
    drop_table :signers
  end
end
