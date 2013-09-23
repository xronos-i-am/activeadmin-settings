namespace :activeadmin do
  namespace :settings do
    desc "Add settings from activeadmin_settings.yml file to the db"
    task flush: :environment do
      ActiveadminSettings::Setting.all.destroy
    end
  end
end