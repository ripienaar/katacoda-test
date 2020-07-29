# Load sharing

Previously we saw that NATS can send one message to all subscribed parties, lets look how NATS can automatically do
load sharing between interested parties.

A **Queue Group** defines a named group of interested parties, lets change our subscriptions to include a group.

`nats sub nats.step3 --queue STEP3`{{execute interrupt T3}}

`nats sub nats.step3 --queue STEP3`{{execute interrupt T4}}

Our publisher is unaware that is a group formed, it still just publishes messages.

`nats pub nats.step3 'Step 3 example'`{{execute T1}}

Execute the above command a few times and switch between tabs, you'll see that the messages are spread out in the group.
