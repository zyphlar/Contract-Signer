class ChangeContractTemplateBoilerplateType < ActiveRecord::Migration
  def self.up
    change_column :contract_templates, :boilerplate, :text
  end

  def self.down
    change_column :contract_templates, :boilerplate, :string
  end
end
