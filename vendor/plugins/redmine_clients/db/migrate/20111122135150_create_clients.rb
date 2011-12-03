class CreateClients < ActiveRecord::Migration
  def self.up
    create_table :clients do |t|
      t.column :account_owner, :string
      t.column :account_name, :string
      t.column :arn, :integer
      t.column :contact_name, :string
      t.column :executive, :string
      t.column :industry, :string
      t.column :email, :string
      t.column :contact_number, :string
      t.column :address, :string
      t.column :city, :string
    end
  end

  def self.down
    drop_table :clients
  end
end
