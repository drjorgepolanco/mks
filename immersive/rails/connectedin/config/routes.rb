Rails.application.routes.draw do
  get 'students/:student_name' => 'students#show', as: 'student'
end
