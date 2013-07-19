class DemoJob
  @queue = :default

  def self.perform
    puts "DOING JOB"
    job = ScheduledJob.first
    puts "Working on #{job.customer_id}"
  end
end
