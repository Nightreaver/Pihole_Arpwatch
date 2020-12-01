# Arpwatch Pihole bootstrap

This is a small docker image intended to bootstrap [arpwatch](https://en.wikipedia.org/wiki/Arpwatch) to the favorite [pihole](https://pi-hole.net/) dns blocker.  
While already running Pihole you can keep you network devices under control and get reported of new devices.
Nullmailer was added to report arpwatch findings via email.

## How it works

PiHole uses S6 to manage its startup process an lifetime, in order to integrate Arpwatch we simply install arpwatch/nullmailer to the docker image.  
Additional S6 configuration files are added to make arpwatch run in parallel to Pihole inside the same container.


## Configuration

To make **arpwatch** findings persistent after a reboot, create a volume to `/var/lib/arpwatch/` (see docker-compose)

Nullmailer can be configured via environment variables

```
      NULLMAILER_SERVER: mailhost.com
      NULLMAILER_SERVER_ENCRYPTION: starttls
      NULLMAILER_SERVER_PORT: 25
      NULLMAILER_SERVER_USER: user@mailhost.com
      NULLMAILER_SERVER_PASS: S3cr3tPa55
      NULLMAILER_RECEIVER: user@gimail.com
      NULLMAILER_MAILNAME: pihole.from.home
```

The **Pihole Version** can be chosen via the build arg `PIHOLE_VERSION` in the docker-compose

The **ethercodes** will be update on reboot with a fresh download from `https://linuxnet.ca/ieee/oui/ethercodes.dat`

## License Info

Pihole, Arpwatch and Nullmailer use their respective official License!
