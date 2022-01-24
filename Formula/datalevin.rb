class Datalevin < Formula
  desc "Simple, fast and versatile Datalog database"
  homepage "https://github.com/juji-io/datalevin"
  version "0.5.28"
  license "EPL-1.0"

  bottle :unneeded

  if OS.linux?
    url "https://github.com/juji-io/datalevin/releases/download/0.5.28/dtlv-0.5.28-ubuntu-latest-amd64.zip"
    sha256 "a6dfce8567aa0ea5d672740202f60ae92757ab93c1dea123186598511d6268b0"
  else
    url "https://github.com/juji-io/datalevin/releases/download/0.5.28/dtlv-0.5.28-macos-latest-amd64.zip"
    sha256 "7d681e2e6254bb2294d36e116f891f712e4e5f2727979d95644b92ae7c535dc8"
  end

  def install
    bin.install "dtlv"
  end

  test do
    assert_equal "10\n",
      pipe_output("#{bin}/dtlv exec '(+ 1 2 3 4)'")
  end
end
