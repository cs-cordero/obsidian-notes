## Layered Architecture

The network infrastructure is described in layers.
- Each layer provides a service to the layer above it.
- Each layer is **not concerned** with the details of _how_ the layer below it performs its work.

A message sent from one application to another can be thought of as two separate "stacks".  The sending side traverses the layers downward.  The receiving side traverses the layers upward.
- In this way, every layer has a _parallel_ on the other end system:  applications in the Application Layer concerns themselves with speaking to other applications also at the Application Layer.  They don't concern themselves with any entities in any of the other layers.

## Encapsulation & Decapsulation

Each layer adds its own header to the message coming from above and the receiving entity on the other end removes it.  The information in the header helps with parsing the message.

It's like a Russian nesting doll: the message gets wrapped again and again at every layer, then unwrapped.

## Popular Models

There are many popular models, but the two most important to know are the [[OSI Model]] and the [[TCP IP Protocol Model|TCP/IP Protocol Model]]. 