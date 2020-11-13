Rails.application.routes.draw do
  root "pages#index"

  get "pages/index"
  get "requests/submit_form"
  post ":controller/validate", action: "validate", as: :validate_form
end
