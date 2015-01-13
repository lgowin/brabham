class Project < ActiveRecord::Base
# A project will have many tasks
  has_many :tasks
end
