# Arpwatch Pihole bootstrap

This is a small docker image intended to bootstrap [arpwatch](https://en.wikipedia.org/wiki/Arpwatch) to the favorite [pihole](https://pi-hole.net/) dns blocker.  
While already running Pihole you can keep you network devices under control and get reported of new devices.
Nullmailer was added to report arpwatch findings via email.

## How it works

PiHole uses S6 to manage its startup process an lifetime, in order to integrate Arpwatch we simply install arpwatch/nullmailer to the docker image.  
Additional S6 configuration files are added to make arpwatch run in parallel to Pihole inside the same container.

## License Info

Pihole, Arpwatch and Nullmailer use their respective official License!
