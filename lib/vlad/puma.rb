namespace :vlad do
  ##
  # Puma app server

  desc "Rolling restart Puma"
  remote_task :reload_app, :roles => :app do
    run "kill -s USR1 $(cat #{deploy_to}/current/tmp/pids/puma.pid)"
  end
end
