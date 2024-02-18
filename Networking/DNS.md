The Domain Name System (DNS) is a lookup service that helps map unique names to their IP addresses.  It is only one such lookup service, but it is the main one.

DNS is a client-server application layer protocol that translates hostnames on the Internet to IP addresses.

DNS is also a distributed hierarchical database of names to IP addresses.
- DNS uses multiple servers, each with a part of the entire database.
- DNS names use a hierarchy by domain and subdomain.


## Root DNS Servers

Clients will check their local cache of names and IP addresses.  If it can't find an address it wants, then it will reach out to a "Root DNS Server".
- Root DNS servers sit one level above the top-level domains (TLD) like .com, .org.  They point to an appropriate TLD server in reply to any of its queries.
- The set of top-level domain names is managed by the Internet Corporation for Assigned Names and Numbers (ICANN).

## Authoritative Servers

Every domain name owner must provide DNS records for their name.  These records have hostname to IP address mappings stored for the organization.
- These DNS records will be stored on a dedicated DNS server for that organization, or the owner can pay for a service provider to store the records on their srever.
- DNS records may yet point to other authoritative servers as well, e.g., to delegate IP address mapping for subdomains.

## Local DNS Cache

DNS mappings are cached locally on client end-systems via a **local resolver library**, part of a client's operating system.
- If this cache does not have a desired mapping, then the client will ask its local DNS server.
- The local DNS server is typically configured either using a protocol called [[DHCP]] or can be configured statically.

## Local DNS Server

This is the first point of contact after a client checks its local cache.  These servers are generally hosted at the ISP.