class Datalevin < Formula
  desc "Simple, fast and durable Datalog database"
  homepage "https://github.com/juji-io/datalevin"
  version "0.4.31"
  license "EPL-1.0"

  if OS.linux?
    url "https://github.com/juji-io/datalevin/releases/download/0.4.31/dtlv-0.4.31-ubuntu-latest-amd64.zip"
    sha256 "41509fa0ca541f08a80b51de8a39c7f9500d8ee6d45042ddf307f4cb0ed9e0ee"
  else
    url "https://github.com/juji-io/datalevin/releases/download/0.4.31/dtlv-0.4.31-macos-latest-amd64.zip"
    sha256 "6b502ffa69a9b71c42c8045f8c0bdfdb23a363e257b21d000d50f8e8abe8c427"
  end

  bottle :unneeded

  def install
    bin.install "dtlv"
  end
end
