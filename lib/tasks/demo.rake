namespace :demo do
  task :setup => :environment do
    ScheduledJob.create!(customer: "lsrc")
  end

  task :q => :environment do
    Resque.enqueue DemoJob, 1
  end

  task :run => :environment do
    job = ScheduledJob.first
    puts job.customer
  end
end
