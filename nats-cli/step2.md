## Publish / Subscribe

The most basic pattern that middleware servers support is called Publish/Subscribe. In this pattern one party publish
messages to a well known **Subject** while any number of other parties receive the messages.

Note the decoupling between publisher and subscriber - the publishing party does not know how many interested parties
there are and does not need to do anything to scale the subscribers.

Let's create 2 **subscribers** listening on the subject `nats.step2`.

`nats sub nats.step2`{{execute T3}}

`nats sub nats.step2`{{execute T4}}

With these created we can now send messages to all the subscribers.

`nats pub nats.step2 'Step 2 example'`{{execute T1}}

If you switch to the other tabs you'll see they received our message.
