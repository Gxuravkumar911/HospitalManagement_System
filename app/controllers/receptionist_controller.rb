class ReceptionistController < ApplicationController

  def index
    @patient_records = PatientRecord.all
    @new_patient_record = PatientRecord.new
  end


    def new
        @new_patient_record = PatientRecord.new
    end

    def create
        @new_patient_record = PatientRecord.new(patient_params)
        if @new_patient_record.save
          redirect_to receptionist_path, notice: "Patient record created successfully."
        else
          render :new
        end
    end

    def show
      @patient_record = PatientRecord.find(params[:id])
    end

    def edit
      @patient_record = PatientRecord.find(params[:id])
    end
  
    def update
      @patient_record = PatientRecord.find(params[:id])
      if @patient_record.update(patient_params)
        redirect_to receptionist_path, notice: "Patient record updated successfully."
      else
        render :edit
      end
    end

    def destroy
      @patient_record = PatientRecord.find(params[:id])
      @patient_record.destroy
      redirect_to receptionist_path, notice: "Patient record deleted successfully."
    end
    
  
    private
  
    def patient_params
      params.require(:patient_record).permit(:name, :age)
    end

    def require_receptionist_role
      unless current_user.receptionist?
        redirect_to root_path, alert: "You don't have permission to access this page."
      end
    end
end