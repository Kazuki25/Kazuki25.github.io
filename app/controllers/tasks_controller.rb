class TasksController < ApplicationController
    def index
        @tasks = Task.where.not(status:["04_Invaild"]).order('due_date DESC')
    end
    
    def create
        @kadai = Kadai.find(params[:kadai_id])
        @task = @kadai.tasks.create(params.require(:task).permit(:status, :do_person, :task, :plan_hour, :due_date, :actual_hour, :do_date))
        redirect_to kadai_path(params[:kadai_id])
    end
    
    def edit
        @kadai = Kadai.find(params[:kadai_id])
        @task = @kadai.tasks.find(params[:id])
    end
    
    def edit1
        @task = Task.find(params[:task_id])
    end
    
    def update
        @kadai = Kadai.find(params[:kadai_id])
        @task = @kadai.tasks.find(params[:id]).update(params.require(:task).permit(:status, :task, :do_person, :plan_hour, :due_date, :actual_hour, :do_date))
        redirect_to kadai_path(params[:kadai_id])
    end
    
    def update1
        @task = Task.find(params[:id]).update(params.require(:task).permit(:status, :task, :do_person, :plan_hour, :due_date, :actual_hour, :do_date))
        redirect_to kadais_path
    end
    
    def calender
        @tasks = Task.where.not(status: ["04_Invaild","99_Close",""]).order('due_date ASC')
        @persons_for_options = Hash.new
        Person.all.each do |person|
           @persons_for_options.store(person.name, person.name)
        end
    end
    
    def filter
        @tasks = Task.where(do_person: params[:person]).where.not(status:["04_Invaild",""]).where.not(due_date: "").order('due_date DESC')
        @persons_for_options = Hash.new
        Person.all.each do |person|
           @persons_for_options.store(person.name, person.name)
        end
    end
end
