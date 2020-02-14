class ReportsController < ApplicationController

    def index 

    end

    def new
      @report = Report.new
      @pet = Pet.find(params[:pet_id])
    end

    def create
       @report = Report.new(report_params)
       @report.user_id = current_user.id
       @report.pet_id = params[:pet_id] 

       if @report.save 
        redirect_to "/pets/#{params[:pet_id]}/reports/#{@report.id}"
        flash[:notice] = "Report saved"
       else
        redirect_back(fallback_location: "/")
        flash[:alert] = "No report"
        end

    end

    def show
        @report = Report.find(params[:id])
        
    end

    private

    def report_params
        params.require(:report).permit(:user_id, :last_seen, :latitude, :longitude, :comment)
    end
    
end