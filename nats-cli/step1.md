# Getting Started

Let's get the basic set up working, we will run a NATS Server in the 3rd terminal of this environment and interact
with it from other terminals.

## Running a server

We will use the 2nd tab to run a NATS server using the docker container. If you click on the `SERVER` tab it should
start a NATS Server running locally in a docker container.

For reference the command being run is:

`docker run -ti -p 4222:4222 synadia/nats-server:nightly`

Once that is started please continue below.

## Confirming connectivity

The `nats` CLI should already be installed, this utility can perform many common tasks such as publishing and receiving
messages, here we will use it to confirm the server is running:

`nats rtt`{{execute T1}}

This should produce output like this:

```go
$ nats rtt
nats://localhost:4222:

   nats://127.0.0.1:4222: 229.381µs
       nats://[::1]:4222: 239.417µs
```
