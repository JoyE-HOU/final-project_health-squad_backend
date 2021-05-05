class Api::V1::MedicationsController < ApplicationController
    skip_before_action :authorized

    def index
        medications = Medication.all
        # render json: MedicationSerializer.new(medications)
        render json: medications.to_json
    end
    
    def show
        medication = Medication.find_by(id: params[:id])
        render json: MedicationSerializer.new(medication)
        # render json: medications.to_json
    end

    private
    def medication_params
        params.require(:medication).permit(:name, :description, :dosage, :directions, :count)
    end
end
