class StatusesController < ApplicationController
    def index
        @statuses = Status.all
    end
    
    def new
        @status = Status.new
    end
    
    def create
        @status = Status.new(status_params)
        @status.save
        redirect_to statuses_path
    end
    
    private
        def status_params
            params.require(:status).permit(:phase)
        end
end
