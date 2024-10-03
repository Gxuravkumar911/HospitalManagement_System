Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: "users/registrations" }


  scope "/receptionist" do
    get "/", to: "receptionist#index", as: :receptionist
    get "/new", to: "receptionist#new", as: :new_patient
    post "/", to: "receptionist#create", as: :receptionist_create
    get "/patients/:id/edit", to: "receptionist#edit", as: :edit_patient
    patch "/patients/:id", to: "receptionist#update", as: :update_patient
    delete "/patients/:id", to: "receptionist#destroy", as: :delete_patient
    
    get "/receptionist/patients/:id", to: "receptionist#show", as: :patient_details
    delete "/receptionist/patients/:id/details", to: "receptionist#destroy", as: :delete_patient_details
  end

  scope "/doctor" do
    get "/graph", to: "doctor#graph", as: :doctor_graph
    get "/", to: "doctor#index", as: :doctor
  end

  root "hospital#index"
end
