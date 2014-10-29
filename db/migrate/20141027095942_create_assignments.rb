class CreateAssignments < ActiveRecord::Migration
  def change
    create_table :assignments do |t|
      t.belongs_to :assigner
      t.string :title
      t.string :category
      t.datetime :start_time
      t.datetime :end_time
      t.string :status
      t.string :description
      t.timestamps
    end
    create_table :assignee_assigned_tasks, id: false do |t|
      t.belongs_to :user
      t.belongs_to :assignment
    end
  end
end
