# NSQ Puppet Module for Boxen

```
ooooo      ooo  .oooooo..o   .oooooo.
`888b.     `8' d8P'    `Y8  d8P'  `Y8b
 8 `88b.    8  Y88bo.      888      888
 8   `88b.  8   `"Y8888o.  888      888
 8     `88b.8       `"Y88b 888      888
 8       `888  oo     .d8P `88b    d88b
o8o        `8  8""88888P'   `Y8bood8P'Ybd'
```

[NSQ](https://github.com/bitly/nsq) is a realtime message processing system designed to operate at bitly's scale, handling billions of messages per day.

## Usage

```puppet
include nsq
```

This will launch [nsqd](https://github.com/bitly/nsq/blob/master/nsqd/README.md) and [nsqlookupd](https://github.com/bitly/nsq/blob/master/nsqlookupd/README.md) as services, and point nsqd at nsqlookupd.

The [nsqadmin](https://github.com/bitly/nsq/blob/master/nsqadmin/README.md) web UI will also be set up at [localhost:14171](http://localhost:14171/).

## Required Puppet Modules

* `boxen`
* `homebrew`

## Environment

Once installed, you can access the following variables in your environment, projects, etc:

* BOXEN_NSQD_TCP_PORT: the configured nsqd TCP port (default 14150)
* BOXEN_NSQD_HTTP_PORT: the configured nsqd HTTP port (default 14151)
* BOXEN_NSQLOOKUPD_TCP_PORT: the configured nsqlookupd TCP port (default 14160)
* BOXEN_NSQLOOKUPD_HTTP_PORT: the configured nsqlookupd HTTP port (default 14161)

## Development

Write code. Run `script/cibuild` to test it. Check the `script`
directory for other useful tools.
