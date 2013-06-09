require 'formula'

class Nsq < Formula
  homepage 'https://github.com/bitly/nsq'
  url 'https://s3.amazonaws.com/bitly-downloads/nsq/nsq-0.2.21.darwin-amd64.go1.0.3.tar.gz'
  sha1 'b1e31a5684493954468b7204d1f4e31181964da1'

  version '0.2.21-boxen1'

  def install
    # Symlink files in ./bin into the path
    prefix.install Dir['bin']

    # Install nsqadmin templates in share
    share.install ['share/nsqadmin']
  end
end
