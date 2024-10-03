class HospitalController < ApplicationController
    def index
        @patient_records = PatientRecord.all
    end
end