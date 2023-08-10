file "node_modules" do
  sh "yarn install"
end

file "dist" => "node_modules" do
  sh "yarn build"
end

task :build => "dist"
task :default => :build
