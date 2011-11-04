class ChangeBoilerplateLimits < ActiveRecord::Migration
  def self.up
    change_column :contracts, :boilerplate, :text, :limit => nil
    change_column :contract_templates, :boilerplate, :text, :limit => nil
  end

  def self.down
    change_column :contracts, :boilerplate, :text, :limit => 255
    change_column :contract_templates, :boilerplate, :text, :limit => 255
  end
end
