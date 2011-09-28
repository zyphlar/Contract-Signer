class CreateContractTemplates < ActiveRecord::Migration
  def self.up
    create_table :contract_templates do |t|
      t.string :name
      t.string :boilerplate

      t.timestamps
    end
  end

  def self.down
    drop_table :contract_templates
  end
end
