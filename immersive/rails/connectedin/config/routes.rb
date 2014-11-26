Rails.application.routes.draw do
  get 'students/polanco' => 'students#polanco'
  get 'students/clarke'  => 'students#clarke'
  get 'students/chatham' => 'students#chatham'
  get 'students/seidman' => 'students#seidman'
end
