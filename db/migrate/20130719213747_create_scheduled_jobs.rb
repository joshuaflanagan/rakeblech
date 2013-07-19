class CreateScheduledJobs < ActiveRecord::Migration
  def change
    create_table :scheduled_jobs do |t|
      t.string :customer

      t.timestamps
    end
  end
end
