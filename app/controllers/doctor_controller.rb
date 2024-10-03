class DoctorController < ApplicationController
    def index
        @patient_records = PatientRecord.all
    end

    def graph
        @registration_data = PatientRecord.group_by_day(:created_at, range: 1.week.ago..Time.now).count
    end
end