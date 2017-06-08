require 'bundler/gem_tasks'

desc "Build the gem"
task :build do
  system "gem build omniauth-hubspot.gemspec"
end

desc "Build and release the gem"
task :release => :build do
  system "gem push omniauth-hubspot-#{OmniAuth::HubSpot::VERSION}.gem"
end
