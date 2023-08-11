require "bundler/gem_tasks"

file "node_modules" do
  sh "yarn install"
end

file "dist" => "node_modules" do
  sh "yarn build-prod"
end

spec = Gem::Specification.load("profile-viewer.gemspec")
version = spec.version.to_s

task :build => "dist"

namespace :gem do
  task :push => :build do
    # check for a clean worktree
    sh "git update-index --really-refresh"
    sh "git diff-index --quiet HEAD"

    # tag it
    sh "git tag -m'tagging release' v#{version}"

    # push it
    ENV['GEM_HOST_OTP_CODE'] = `ykman oath accounts code -s rubygems.org`.chomp
    sh "gem push pkg/profile-viewer-#{version}.gem"
    sh "git push --tags"
  end
end
