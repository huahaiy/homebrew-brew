class Datalevin < Formula
  desc "Simple, fast and durable Datalog database"
  homepage "https://github.com/juji-io/datalevin"
  version "0.5.3"
  license "EPL-1.0"

  if OS.linux?
    url "https://github.com/juji-io/datalevin/releases/download/0.5.3/dtlv-0.5.3-ubuntu-latest-amd64.zip"
    sha256 "e44b501028834d12e59daf3c6a374cfd39be20460a12e72a3d58e313c82e7c8c"
  else
    url "https://github.com/juji-io/datalevin/releases/download/0.5.3/dtlv-0.5.3-macos-latest-amd64.zip"
    sha256 "ef12240fbe429ec6a5a10728121d789d10e2a82f575d0c7867c44db6ea5f5875"
  end

  bottle :unneeded

  def install
    bin.install "dtlv"
  end
end
