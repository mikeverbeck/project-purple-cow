#!/bin/bash

bin/rake db:create
bin/rake db:migrate

if [ -f tmp/pids/server.pid ]; then

rm tmp/pids/server.pid

fi

bundle exec rails server -b 0.0.0.0 -p 3000