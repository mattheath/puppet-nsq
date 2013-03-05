class nsq::config {
  require boxen::config

  $configdir   = "${boxen::config::configdir}/nsq"
  $datadir     = "${boxen::config::datadir}/nsq"
  $logdir      = "${boxen::config::logdir}/nsq"
  $bindir      = "${boxen::config::homebrewdir}/bin"
  $templatedir = "${boxen::config::homebrewdir}/share/nsqadmin/templates"

  $nsqdhttpaddress = "0.0.0.0"
  $nsqdhttpport    = "14151"
  $nsqdtcpaddress  = "0.0.0.0"
  $nsqdtcpport     = "14150"

  $nsqlookupdhttpaddress = "0.0.0.0"
  $nsqlookupdhttpport    = "14161"
  $nsqlookupdtcpaddress  = "0.0.0.0"
  $nsqlookupdtcpport     = "14160"

  $nsqadminhttpaddress = "0.0.0.0"
  $nsqadminhttpport    = "14171"

}
