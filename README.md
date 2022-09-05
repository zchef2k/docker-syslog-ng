# README

Basic syslog-ng container. Map a config file like so...

```
docker run ...  -v "$PWD/syslog-ng.conf":/etc/syslog-ng/syslog-ng.conf
```

Obviously the config file contains the magic. My primary use case will be to send varoius log source material to Splunk HECs.
