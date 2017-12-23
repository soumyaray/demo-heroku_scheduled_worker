FROM soumyaray/ruby-http:2.4.3

WORKDIR /worker

ADD Procfile .
ADD Rakefile .
ADD hello_worker.rb .

CMD ruby hello_worker.rb

# LOCAL:
# Build local image with:
#   rake docker:build
# or:
#   docker build --rm --force-rm -t soumyaray/hello_worker:0.1.0 .
#
# Run and test local container with:
#   rake docker:run
# or:
#   docker run -e --rm -it -v \"$PWD\":/worker -w /worker soumyaray/hello_worker:0.1.0 ruby hello_worker.rb

# REMOTE:
# Build and push to Heroku container registry with:
#   heroku container:push web
# (if first time, add scheduler to Heroku and have it run 'worker')
#
# Run and test remote container:
#   heroku run worker
# or:
#   heroku run ruby hello_worker.rb
