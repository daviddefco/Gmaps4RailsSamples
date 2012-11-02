namespace :db do
  desc "Fill database with sample data"
  task :populate => :environment do
    require 'populator'
    require 'faker'

    # Clean previous DB registers
    Rake::Task['db:reset'].invoke    
    # Populate the customer table
    Event.populate(65) do |event|
      event.latitude        = -25..25
      event.longitude       = -60..60
      event.title           = Populator.words(1..5).titleize
      event.description     = Populator.sentences(2..8)
    end
  end
end