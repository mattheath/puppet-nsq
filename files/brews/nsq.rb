require 'formula'

class Nsq < Formula
  homepage 'https://github.com/bitly/nsq'
  url 'https://s3.amazonaws.com/bitly-downloads/nsq/nsq-0.3.2.darwin-amd64.go1.4.1.tar.gz'
  sha1 '0c1866a01b879af4730e09e02e600cbe2930511c'

  version '0.3.2-boxen1'

  def install
    # Symlink files in ./bin into the path
    prefix.install Dir['bin']
  end
end
