class Api::V1::PrescriptionsController < ApplicationController
    skip_before_action :authorized

    def index
        prescriptions = Prescription.all
        render json: prescriptions, include: [:medication]
    end
    
    def show
        prescription = Prescription.find_by(id: params[:id])
        render json: PrescriptionSerializer.new(prescription), include: [:medication]
    end

    def create
        prescription = Prescription.create(
            user_id: params[:user_id],
            medication_id: params[:medication_id],
            reminder: params[:reminder]
        )
        if prescription
            render json: prescription
        else
            render json: {"message": "Failed to create a new prescription"}
        end
    end

    def update
        prescription = Prescription.find_by(id: params[:id])
        if prescription.update(reminder: params[:reminder])
            render json: {"message": "Success" }
        else
            render json: {"message": "Failed to update"}
        end
    end

    def destroy
        prescription = Prescription.find_by(id: params[:id])
        if prescription.destroy
            render json: {"message": "Successfully Deleted"}
        else
            render json: {"message": "Failed to delete"}
        end
    end

    private
    def prescription_params
        params.require(:prescription).permit(:user_id, :medication_id, :reminder)
    end
end
