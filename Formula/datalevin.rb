class Datalevin < Formula
  desc "Simple, fast and durable Datalog database"
  homepage "https://github.com/juji-io/datalevin"
  version "0.4.40"
  license "EPL-1.0"

  if OS.linux?
    url "https://github.com/juji-io/datalevin/releases/download/0.4.40/dtlv-0.4.40-ubuntu-latest-amd64.zip"
    sha256 "e79383b12fb747d959775f956384087e4c14b0226852db567309ad07ceb4a977"
  else
    url "https://github.com/juji-io/datalevin/releases/download/0.4.40/dtlv-0.4.40-macos-latest-amd64.zip"
    sha256 "bbe319f50dd424a20d8ede3166a9779f9c06753aaee0689426dd8386dbadd748"
  end

  bottle :unneeded

  def install
    bin.install "dtlv"
  end
end
