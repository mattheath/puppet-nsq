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

## Required Puppet Modules

* `boxen`
* `homebrew`

## Development

Write code. Run `script/cibuild` to test it. Check the `script`
directory for other useful tools.
