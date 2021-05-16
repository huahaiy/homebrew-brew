class Datalevin < Formula
  desc "Simple, fast and durable Datalog database"
  homepage "https://github.com/juji-io/datalevin"
  version "0.4.34"
  license "EPL-1.0"

  if OS.linux?
    url "https://github.com/juji-io/datalevin/releases/download/0.4.34/dtlv-0.4.34-ubuntu-latest-amd64.zip"
    sha256 "1f3ae972069daad71e7e436992605e53a0e7ded15b32593298550ca194dfb8ae"
  else
    url "https://github.com/juji-io/datalevin/releases/download/0.4.34/dtlv-0.4.34-macos-latest-amd64.zip"
    sha256 "2c2138b9f72dc5663bc87936f0250998d9aaaff22a95482dad19914705d19a06"
  end

  bottle :unneeded

  def install
    bin.install "dtlv"
  end
end
