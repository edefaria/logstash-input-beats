#!/bin/bash
# This is intended to be run inside the docker container as the command of the docker-compose.

env

set -ex

jruby -rbundler/setup -S rspec -fd

jruby -rbundler/setup -S rake test:integration:setup
jruby -rbundler/setup -S rspec spec --tag integration  -fd
