class Datalevin < Formula
  desc "Simple, fast and durable Datalog database"
  homepage "https://github.com/juji-io/datalevin"
  version "0.4.39"
  license "EPL-1.0"

  if OS.linux?
    url "https://github.com/juji-io/datalevin/releases/download/0.4.39/dtlv-0.4.39-ubuntu-latest-amd64.zip"
    sha256 "3bf378e4afd917ea1d13cb7d4ab214e2d7d09417281c7553f21fd3cfc7648181"
  else
    url "https://github.com/juji-io/datalevin/releases/download/0.4.39/dtlv-0.4.39-macos-latest-amd64.zip"
    sha256 "8dc64d6d63a4ba1a9a4dff6492213dac4f4b9f682c1db7094aa107ceb0a26936"
  end

  bottle :unneeded

  def install
    bin.install "dtlv"
  end
end
