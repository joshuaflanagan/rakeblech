class DemoJob
  @queue = :default

  def self.perform(id)
    puts "DOING JOB FOR #{id}"
    job = ScheduledJob.first
    puts "Working on #{job.customer}"
  end
end
