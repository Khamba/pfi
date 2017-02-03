# == Route Map
#
#                 Prefix Verb   URI Pattern                       Controller#Action
#                   root GET    /                                 static_pages#home
#               patients GET    /patients(.:format)               patients#index
#                        POST   /patients(.:format)               patients#create
#            new_patient GET    /patients/new(.:format)           patients#new
#           edit_patient GET    /patients/:id/edit(.:format)      patients#edit
#                patient GET    /patients/:id(.:format)           patients#show
#                        PATCH  /patients/:id(.:format)           patients#update
#                        PUT    /patients/:id(.:format)           patients#update
#                        DELETE /patients/:id(.:format)           patients#destroy
#       patient_sessions POST   /patient_sessions(.:format)       patient_sessions#create
#   new_patient_sessions GET    /patient_sessions/new(.:format)   patient_sessions#new
#                        DELETE /patient_sessions(.:format)       patient_sessions#destroy
#      basic_info_doctor GET    /doctors/:id/basic_info(.:format) doctors#basic_info
#                        POST   /doctors/:id/basic_info(.:format) doctors#update_basic_info
#         search_doctors GET    /doctors/search(.:format)         doctor_search#index
#                doctors GET    /doctors(.:format)                doctors#index
#                        POST   /doctors(.:format)                doctors#create
#             new_doctor GET    /doctors/new(.:format)            doctors#new
#            edit_doctor GET    /doctors/:id/edit(.:format)       doctors#edit
#                 doctor GET    /doctors/:id(.:format)            doctors#show
#                        PATCH  /doctors/:id(.:format)            doctors#update
#                        PUT    /doctors/:id(.:format)            doctors#update
#                        DELETE /doctors/:id(.:format)            doctors#destroy
#        doctor_sessions POST   /doctor_sessions(.:format)        doctor_sessions#create
#    new_doctor_sessions GET    /doctor_sessions/new(.:format)    doctor_sessions#new
#                        DELETE /doctor_sessions(.:format)        doctor_sessions#destroy
#                 admins GET    /admins(.:format)                 admins#index
#                        POST   /admins(.:format)                 admins#create
#              new_admin GET    /admins/new(.:format)             admins#new
#             edit_admin GET    /admins/:id/edit(.:format)        admins#edit
#                  admin GET    /admins/:id(.:format)             admins#show
#                        PATCH  /admins/:id(.:format)             admins#update
#                        PUT    /admins/:id(.:format)             admins#update
#                        DELETE /admins/:id(.:format)             admins#destroy
#         admin_sessions POST   /admin_sessions(.:format)         admin_sessions#create
#     new_admin_sessions GET    /admin_sessions/new(.:format)     admin_sessions#new
#                        DELETE /admin_sessions(.:format)         admin_sessions#destroy
#           specialities GET    /specialities(.:format)           specialities#index
#                        POST   /specialities(.:format)           specialities#create
#         new_speciality GET    /specialities/new(.:format)       specialities#new
#        edit_speciality GET    /specialities/:id/edit(.:format)  specialities#edit
#             speciality GET    /specialities/:id(.:format)       specialities#show
#                        PATCH  /specialities/:id(.:format)       specialities#update
#                        PUT    /specialities/:id(.:format)       specialities#update
#                        DELETE /specialities/:id(.:format)       specialities#destroy
#              hospitals GET    /hospitals(.:format)              hospitals#index
#                        POST   /hospitals(.:format)              hospitals#create
#           new_hospital GET    /hospitals/new(.:format)          hospitals#new
#          edit_hospital GET    /hospitals/:id/edit(.:format)     hospitals#edit
#               hospital GET    /hospitals/:id(.:format)          hospitals#show
#                        PATCH  /hospitals/:id(.:format)          hospitals#update
#                        PUT    /hospitals/:id(.:format)          hospitals#update
#                        DELETE /hospitals/:id(.:format)          hospitals#destroy
# search_cities_by_state POST   /search/cities_by_state(.:format) doctor_search#cities_by_state
#

Rails.application.routes.draw do

  root 'static_pages#home'

  resources :patients
  resource :patient_sessions, only: [:new, :create, :destroy]

  resources :doctors do
    member do
      get 'basic_info'
      post 'basic_info', to: 'doctors#update_basic_info'
    end

    collection do
      get 'search', to: 'doctor_search#index'
    end
  end
  resource :doctor_sessions, only: [:new, :create, :destroy]

  resources :admins
  resource :admin_sessions, only: [:new, :create, :destroy]

  resources :specialities
  resources :hospitals

  post 'search/cities_by_state', to: "doctor_search#cities_by_state"

end
