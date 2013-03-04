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

}