## Context

The **Open Systems Interconnection (OSI)** model was developed in the 1970s and provided a standard for how computers can communicate with each other.

## The Layers

The following describes the OSI stack.

1. Application
2. Presentation
3. Session
4. Transport
5. Network
6. Data Link
7. Physical

The mnemonic: "**P**lease **D**o **N**ot **T**hrow **S**ausage **P**izza **A**way" describes the stack in reverse order.

This stack is implemented either in software, hardware, or a combination of both.  So as a programmer, you may or may not "see" the actual entity operating at a given layer unless you go looking for it.


### Application Layer (Layer 7)
- Almost always implemented in software.
- End-users interact at the application layer.
- Messages begin their journey at this layer.

### Presentation Layer (Layer 6)
- Handles presenting data in a way that can be understood and displayed by the Application layer.
	- For example, [[Encoding]].  The underlying layers may use a different character encoding compared to the one used by the application layer.  The presentation layer performs the translation.
- [[Encryption]] is usually handled at this layer as well.
- End-to-End Compression may also be implemented at this layer.

### Session Layer (Layer 5)
- Manages user sessions.  In other words, messages are being transported in from the source to any destination and from any destination to the source.
- This layer must map the messages delivered by the transport layer to the user sessions.

### Transport Layer (Layer 4)
- Has protocols implemented largely in software.
- Segments data into smaller chunks called "datagrams" or "segements".
- May inject additional information, e.g., checksums, to help transmit data reliably.

### Network Layer (Layer 3)
- Messages at this layer are simply called "packets".
- This layer facilitations the transportation of packets from one end system to another by determining the best routes.
- Routing protocols are applications that run on the network layer and exchange messages with each other to develop information that helps them route transport layer messages.

### Data Link Layer (Layer 2)
- Allows directly connected hosts to communicate.  This can be challenging due to **flow control** and **error detection/correction**.
- Encapsulates packets for transmission across a single link.
- Resolves transmission conflicts, i.e., when two end systems send a message at the same time across one single link.
- Data Links may be multiplexed or demultiplexed, which means that multiple data links could be made to appear like one, or a single data link could be made to look like multiple "virtual" data links.

### Physical Layer (Layer 1)
- Hardware
- Solid electrical and mechanical transmission of electricity and data.
- Cares about bits at this layer. Not packets. Not segments.