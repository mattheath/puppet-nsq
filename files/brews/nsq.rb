require 'formula'

class Nsq < Formula
  homepage 'https://github.com/bitly/nsq'
  url 'https://s3.amazonaws.com/bitly-downloads/nsq/nsq-0.2.18.darwin-amd64.tar.gz'
  sha1 '63333c5d54a66bda03b2327b15d8a98eb9989b9d'

  version '0.2.18-boxen1'

  def install
    # Symlink files in ./bin into the path
    prefix.install Dir['bin']

    # Install nsqadmin templates in share
    share.install ['share/nsqadmin']
  end
end
