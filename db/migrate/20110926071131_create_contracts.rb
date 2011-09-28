class CreateContracts < ActiveRecord::Migration
  def self.up
    create_table :contracts do |t|
      t.string :boilerplate
      t.binary :signature
      t.string :signinghash
      t.datetime :datesigned

      t.timestamps
    end
  end

  def self.down
    drop_table :contracts
  end
end
