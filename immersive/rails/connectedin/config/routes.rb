Rails.application.routes.draw do
  root 'students#index'
  get 'students/:student_name' => 'students#show', as: 'student'
end
