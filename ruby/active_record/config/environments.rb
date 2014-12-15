require 'active_record'
require 'active_record_tasks'
require_relative '../lib/ar_exercise.rb'

ActiveRecord::Base.establish_connection(
  :adapter => 'postgresql',
  :database => 'ar_exercise'
)