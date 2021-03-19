class Datalevin < Formula
  desc "Simple, fast and versatile Datalog database"
  homepage "https://github.com/juji-io/datalevin"
  version "0.4.28"
  license "EPL-1.0"

  if OS.linux?
    url "https://github.com/juji-io/datalevin/releases/download/0.4.28/dtlv-0.4.28-ubuntu-latest-amd64.zip"
    sha256 "1ba20f98cd8c35b598cdd33b58012a64a5a3fe3b4b8a3edcca28948227bf990b"
  else
    url "https://github.com/juji-io/datalevin/releases/download/0.4.28/dtlv-0.4.28-macos-latest-amd64.zip"
    sha256 "4d9940d1e6de6504accfb39ef90b97c8b7de58b09bfe87fe8663bfea0deaad08"
  end

  bottle :unneeded

  def install
    bin.install "dtlv"
  end
end
