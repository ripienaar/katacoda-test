# Services

We saw how NATS can broadcast messages between interested parties and how it can share the load, so far the communication
has been one way.

NATS has a feature that allows one to create services, for example one might ask todays weather and the service could respond
with it.

In this example we will set up a redundant cluster of servers that will respond with a dummy answer to our request, the
servers will load balance between them and one CLI will invoke the service.

`nats reply nats.step4 'service response' -H Responder:3 --queue STEP3`{{execute interrupt T3}}

`nats reply nats.step4 'service response' -H Responder:4 --queue STEP4`{{execute interrupt T4}}

With 2 instances running, lets make some request.  If you run the command below a few times you should see
responses from the HA group of backends.

`nats request nats.step4 ''`{{execute T1}}

Note the responders sets a Header that indicate which one serviced the request.  The queue group like before ensures
that only one backend in the cluster handles the request.
