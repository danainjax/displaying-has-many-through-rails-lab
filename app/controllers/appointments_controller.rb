class AppointmentsController < ApplicationController


    def new
        @appointment = Appointment.new
    end

    def create
        @appointment = Appointment.new(appointment_params)
        if appointment.save
            redirect_to appointment_path(@appointment)
        end
    end

    def index
        @appointments = Appointment.all
    end

    def show 
        @appointment = Appointment.find(params[:id])
    end


    def appointment_params
        params.require(:appointment).permit(:appointment_datetime, :doctor_id, :patient_id)
    end

    
end
