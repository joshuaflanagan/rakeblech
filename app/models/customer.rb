class Customer < ActiveRecord::Base
  attr_accessible :name
  has_many :scheduled_jobs
end
