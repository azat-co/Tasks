#!/bin/bash

bundle install
bundle exec rake db:create db:migrate db:test:prepare