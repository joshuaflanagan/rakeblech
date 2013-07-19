namespace :innocent do
  task :greeting do
    puts "hello #{customer}"
  end

  def customer
    ENV["CUSTOMER"] || "ruby"
  end
end
