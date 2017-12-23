# frozen_string_literal: true

# Docker tasks
namespace :docker do
  USERNAME = 'soumyaray'
  WORKER = 'hello_worker.rb'
  IMAGE = 'hello_worker'
  VERSION = '0.1.0'
  CONFIG_FILE = 'config.yml'

  desc 'Run the local Docker container as a worker'
  task :run do
    puts "\nRUNNING WORKER WITH LOCAL CONTEXT"
    sh 'docker run -e --rm -it -v \"$PWD\":/worker -w /worker ' \
       "#{USERNAME}/#{IMAGE}:#{VERSION} ruby #{WORKER}"
  end

  desc 'Build Docker image'
  task :build do
    puts "\nBUILDING WORKER IMAGE"
    sh "docker build --rm --force-rm -t #{USERNAME}/#{IMAGE}:#{VERSION} ."
  end

  desc 'Push Docker image to Docker Hub'
  task :push do
    puts "\nPUSHING IMAGE TO DOCKER HUB"
    sh "docker push #{USERNAME}/#{IMAGE}:#{VERSION}"
  end
end
