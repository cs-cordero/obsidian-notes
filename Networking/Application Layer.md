## Responsibilities
- Write data to the network in a format compliant with the protocol in use.
- Reading data from the end-user.
- Ensure/validate that data from the end-user is in the correct/expected format.
- Handles errors and recovery

## Common Protocols
- Email
- World Wide Web (HTTP)
- Voice over IP (VoIP)
- Video chat (FaceTime, Skype, etc.)
- Video streaming (YouTube)
- Video live streaming (Twitch)

## Common Architectures
- Client-Server
- Peer-to-Peer (P2P)
	- Applications on end-systems called 'peers' communicate with each other.  No dedicated server or large data center required.

## Processes

**Processes** are running instances of **Program**s.  They may have one or more [[Thread]]s which actually performs the work the process sets out to do.

Processes can communicate with other processes, whether that's another process on the same machine, requiring no network transit, or processes on other machines.

## Sockets

A [[Socket]] is an interface between a computer process and the computer network.  Sockets have nothing to do with hardware: they are software interfaces.  Processes send their messages into a socket, then don't worry about what happens to it after that.

## Addressing

An [[IP Address]] identifies a computer device on a network.  [[Port]]s, on the other hand, help identify a specific process running on the machine at that IP address.  Processes (and by extension, applications/programs) can listen on one or more ports.  Some applications may use _Ephemeral Ports_, which are ports that stay open for only as long as a particular communication session, then are cleaned up afterward.  Clients use these a lot.  Servers generally need to be reachable on some reserved port or else clients won't know where to go.