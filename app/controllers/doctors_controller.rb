class DoctorsController < ApplicationController

    def new
        @doctor = Doctor.new
    end

    def create
        @doctor = Doctor.new(doctor_params)
        if @doctor.save
            redirect_to doctor_path(@doctor)
        end
    end

    def index
        @doctors = Doctor.all
    end

    def show
        @doctor = Doctor.find(params[:id])
    end

    def doctor_params
        params.require(:doctor).permit(:name, :department)
    end

end
