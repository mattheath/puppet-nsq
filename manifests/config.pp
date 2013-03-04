class nsq::config {
  require boxen::config

  $configdir = "${boxen::config::configdir}/nsq"
  $datadir   = "${boxen::config::datadir}/nsq"
  $logdir    = "${boxen::config::logdir}/nsq"
  $bindir    = "${boxen::config::homebrewdir}/bin"

}
