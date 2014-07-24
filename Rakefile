
require 'rspec/core/rake_task'

RSpec::Core::RakeTask.new(:spec)

task default: :test

PID_FILE = "app.pid"

task test: ['app:ensure_running'] do
  Rake::Task['spec'].invoke
  Rake::Task['app:stop'].invoke
end

namespace :app do

  task :ensure_running do
    Rake::Task['app:start'].invoke unless File.exists?(PID_FILE)
  end

  task :start do
    raise("Server running? Please manually remove #{PID_FILE}") if File.exists?(PID_FILE)
    pid = Process.fork { exec 'rackup' }
    File.open(PID_FILE, 'w') { |f| f.write(pid) }
  end

  task :stop do
    raise("Server does not appear to be running") unless File.exists?(PID_FILE)
    pid = File.read(PID_FILE)
    Process.kill( 'KILL', pid.to_i )
    FileUtils.rm(PID_FILE)
  end

end
