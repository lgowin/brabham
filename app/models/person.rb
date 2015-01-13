class Person < ActiveRecord::Base
# declaration to many to many relationahip
  has_and_belongs_to_many :tasks, foreign_key: :name

# ensures resources are assigned to existing tasks
#  validates_existence_of :task

  def assigned_to?(task)
    self.tasks.include?(task)
  end

  def unassigned_tasks
    Task.find(:all) - self.tasks
  end

end
