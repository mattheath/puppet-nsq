class nsq {
  include nsq::config
  include homebrew

  file { [
    $nsq::config::configdir,
    $nsq::config::datadir,
    $nsq::config::logdir
  ]:
    ensure => directory,
  }

  homebrew::formula { 'nsq':
    source => 'puppet:///modules/nsq/brews/nsq.rb',
    before => Package['boxen/brews/nsq'] ;
  }

  package { 'boxen/brews/nsq':
    ensure => '0.2.18-boxen1',
  }

  # Make ports and listening addresses available as environment vars

  file { "${boxen::config::envdir}/nsq.sh":
    content => template('nsq/env.sh.erb'),
    require => File[$boxen::config::envdir]
  }

  # Fire up our nsqd service

  file { '/Library/LaunchDaemons/dev.nsqd.plist':
    content => template('nsq/dev.nsqd.plist.erb'),
    group   => 'wheel',
    owner   => 'root',
    require => Package['boxen/brews/nsq'],
    notify  => Service['dev.nsqd'],
  }

  service { 'dev.nsqd':
    ensure  => running,
  }

  # Fire up our nsqlookupd service

  file { '/Library/LaunchDaemons/dev.nsqlookupd.plist':
    content => template('nsq/dev.nsqlookupd.plist.erb'),
    group   => 'wheel',
    owner   => 'root',
    require => Package['boxen/brews/nsq'],
    notify  => Service['dev.nsqlookupd'],
  }

  service { 'dev.nsqlookupd':
    ensure  => running,
  }

  # Fire up our nsqadmin service

  file { '/Library/LaunchDaemons/dev.nsqadmin.plist':
    content => template('nsq/dev.nsqadmin.plist.erb'),
    group   => 'wheel',
    owner   => 'root',
    require => Package['boxen/brews/nsq'],
    notify  => Service['dev.nsqadmin'],
  }

  service { 'dev.nsqadmin':
    ensure  => running,
  }

}