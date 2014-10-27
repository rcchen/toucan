class CreateAssignments < ActiveRecord::Migration
  def change
    create_table :assignments do |t|
      t.integer :assigner_id
      t.integer :assignee_id
      t.string :title
      t.string :category
      t.datetime :start_time
      t.datetime :end_time
      t.string :status
      t.string :description
      t.timestamps
    end
  end
end
