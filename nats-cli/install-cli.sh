#!/bin/bash

set -e

curl -OL https://github.com/nats-io/jetstream/releases/download/v0.0.17/jetstream-0.0.17-linux-amd64.zip
unzip jetstream-0.0.17-linux-amd64.zip
mv jetstream-0.0.17-linux-amd64/nats /bin
chmod a+x /bin/nats
rm -rf jetstream-0.0.17-linux-amd64 jetstream-0.0.17-linux-amd64.zip
