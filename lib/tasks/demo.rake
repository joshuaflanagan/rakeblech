namespace :demo do
  desc "Configure the database for the demo"
  task :setup => :environment do
    Customer.destroy_all
    ScheduledJob.destroy_all
    c = Customer.create! name: "lsrc"
    c.scheduled_jobs.create!
  end

  desc "Enqueue a job to demo the issue"
  task :q => :environment do
    Resque.enqueue DemoJob
  end
end
