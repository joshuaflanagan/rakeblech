namespace :innocent do
  desc "Says hello to a CUSTOMER"
  task :greeting do
    puts "hello #{customer_id}"
  end

  def customer_id
    ENV["CUSTOMER"] || "ruby"
  end
end
