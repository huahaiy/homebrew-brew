class Datalevin < Formula
  desc "Simple, fast and durable Datalog database"
  homepage "https://github.com/juji-io/datalevin"
  version "0.4.25"
  license "EPL-1.0"

  if OS.linux?
    url "https://github.com/juji-io/datalevin/releases/download/0.4.25/dtlv-0.4.25-ubuntu-latest-amd64.zip"
    sha256 "e3e3b229ae2d5a0e50bfede0cee31b82f75af9e22080f7bd3900dc93ccf71eb1"
  else
    url "https://github.com/juji-io/datalevin/releases/download/0.4.25/dtlv-0.4.25-macos-latest-amd64.zip"
    sha256 "d251d5fc17c14024373f2fe50767a6273c0a4064d04fd9d6a1362b2400c9b71b"
  end

  bottle :unneeded

  def install
    bin.install "dtlv"
  end
end
