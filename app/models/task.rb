class Task < ActiveRecord::Base
# a task is linked to a project through project_id
  belongs_to :project

# sets up many to many relationship with people
  has_and_belongs_to_many :person

# ensure tasks are assigned to existing projects
  validates_existence_of :project

end
