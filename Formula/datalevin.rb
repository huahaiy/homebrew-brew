class Datalevin < Formula
  desc "Simple, fast and durable Datalog database"
  homepage "https://github.com/juji-io/datalevin"
  version "0.4.30"
  license "EPL-1.0"

  if OS.linux?
    url "https://github.com/juji-io/datalevin/releases/download/0.4.30/dtlv-0.4.30-ubuntu-latest-amd64.zip"
    sha256 "0e65638182369db985fdc56292aa1fa9f28b3c32481359e3a3917cff9b939180"
  else
    url "https://github.com/juji-io/datalevin/releases/download/0.4.30/dtlv-0.4.30-macos-latest-amd64.zip"
    sha256 "539c4f410934f3b5d92c67b0a8b95147b889e74b3afb641af477992de5c4ed66"
  end

  bottle :unneeded

  def install
    bin.install "dtlv"
  end
end
