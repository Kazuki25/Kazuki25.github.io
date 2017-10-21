class StatusesController < ApplicationController
    def index
        @statuses = Status.all.order('code asc')
    end
    
    def new
        @status = Status.new
    end
    
    def create
        @status = Status.new(status_params)
        @status.save
        redirect_to statuses_path
    end
    
    def edit
        @status = Status.find(params[:id])
    end
    
    def update
        @status =Status.find(params[:id]).update(status_params)
        redirect_to statuses_path
    end
    
    private
        # Use callbacks to share common setup or constraints between actions.
        def set_status
          @status = Status.find(params[:id])
        end
    
        def status_params
            params.require(:status).permit(:phase,:code)
        end
end
