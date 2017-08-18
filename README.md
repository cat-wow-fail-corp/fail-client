# fail-client

## Scale the fail

This repo (should) create a vagrant box that registers itself on the public network
and runs a simple python web app via nginx and uWSGI.

## How to make it go

```bash
host$ vagrant up
<Much downloading...>
host$ vagrant ssh
guest$ hostname -I
<IP Address of guest machine>
```

You should be able to hit the IP of the guest machine on your hosts brower.

