class AssignmentsController < ApplicationController

    def create
        assignment = Assignment.new(assignment_params)
        assignment.assigner = current_user
        assignment.status = "Unassigned"
        assignment.save
    end

    def show

    end

    def update
        
    end

    def destroy

    end

    def signup
        assignment = Assignment.find(params[:id])
        unless assignment.assignees.include?(current_user)
            assignment.assignees << current_user
            assignment.status = "Assigned"
            assignment.save
        end
    end

    private

    def assignment_params
        params.require(:assignment).permit(:title, :category, :start_time, :description)
    end

end
