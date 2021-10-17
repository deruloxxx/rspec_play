# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require_relative "config/application"

Rails.application.load_tasks

task :cucumber do
  sh "bundle exec cucumber codebreaker/features/codebreaker_starts_game.feature"
end
