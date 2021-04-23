class Datalevin < Formula
  desc "Simple, fast and durable Datalog database"
  homepage "https://github.com/juji-io/datalevin"
  version "0.4.29"
  license "EPL-1.0"

  if OS.linux?
    url "https://github.com/juji-io/datalevin/releases/download/0.4.29/dtlv-0.4.29-ubuntu-latest-amd64.zip"
    sha256 "bc347df7d4b6b3a8655c335daa208e66c74f19302737cd770300dfebb670e98f"
  else
    url "https://github.com/juji-io/datalevin/releases/download/0.4.29/dtlv-0.4.29-macos-latest-amd64.zip"
    sha256 "709b5b73c7cf8fab0bda22abeb7ea2d10a891c695790730d72d5749cad691259"
  end

  bottle :unneeded

  def install
    bin.install "dtlv"
  end
end
