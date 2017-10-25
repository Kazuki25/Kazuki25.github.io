class RoutinesController < ApplicationController
    def index
        @groups = Routine.distinct.select(:group, :task_id, :do_person, :task).order(:group, :task_id)
        @routines_group = []
        @groups.each do |g|
            @routines_group << Routine.where(group:g.group)
        end
    end
    
    def new
        @routine = Routine.new
    end
    
    def create
        this_sunday = Time.current.beginning_of_week-1.days
        @N = params[:times].to_i
        @wd = params[:wday]
        for i in 1..@N do
            @wd.each do |d|
                @routine = Routine.new(routine_params)
                @routine.do_date = this_sunday + d.to_i*1.day + (i-1)*7.days
                @routine.save
            end    
        end
        redirect_to routines_path
    end
    
    def edit
        @routine = Routine.find(params[:id])
        @routine.update(actual_hour: @routine.plan_hour)
        redirect_to routines_path
    end
    
    private
        def routine_params
            params.require(:routine).permit(:group, :task_id, :do_person, :task, :plan_hour, :actual_hour, :do_date)
        end
end
