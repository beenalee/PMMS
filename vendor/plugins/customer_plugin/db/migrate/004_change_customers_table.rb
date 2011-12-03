# Use rake db:migrate_plugins to migrate installed plugins
class ChangeCustomersTable < ActiveRecord::Migration
  def self.up
    rename_column :customers, :name, :account_owner
    rename_column :customers, :company, :account_name
    add_column :customers, :arn, :string
    add_column :customers, :contact_name, :string
    add_column :customers, :account_executive, :string
    add_column :customers, :industry, :string
    add_column :customers, :city, :string
  end

  def self.down
    remove_column :customers, :city
    remove_column :customers, :industry
    remove_column :customers, :account_executive
    remove_column :customers, :contact_name
    remove_column :customers, :arn
    rename_column :customers, :account_name, :company
    rename_column :customers, :account_owner, :name
  end
end
