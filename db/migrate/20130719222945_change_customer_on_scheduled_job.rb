class ChangeCustomerOnScheduledJob < ActiveRecord::Migration
  def up
    remove_column :scheduled_jobs, :customer
    add_column :scheduled_jobs, :customer_id, :integer
  end

  def down
    remove_column :scheduled_jobs, :customer_id
    add_column :scheduled_jobs, :customer, :string
  end
end
