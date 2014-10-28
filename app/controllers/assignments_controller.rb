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

    private

    def assignment_params
        params.require(:assignment).permit(:title, :category, :start_time, :description)
    end

end
