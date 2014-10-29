class Assignment < ActiveRecord::Base
    belongs_to :assigner, class_name: 'User'
    has_and_belongs_to_many :assignees, class_name: 'User', join_table: 'assignee_assigned_tasks'
end
