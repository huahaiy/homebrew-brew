class Datalevin < Formula
  desc "Simple, fast and versatile Datalog database"
  homepage "https://github.com/juji-io/datalevin"
  version "0.6.10"
  license "EPL-1.0"

  if OS.linux?
    url "https://github.com/juji-io/datalevin/releases/download/0.6.10/dtlv-0.6.10-ubuntu-latest-amd64.zip"
    sha256 "150b7a85bb166de982a4b646f4a9a6553d0a30ac62997293cc62cc4ca433c043"
  else
    url "https://github.com/juji-io/datalevin/releases/download/0.6.10/dtlv-0.6.10-macos-latest-amd64.zip"
    sha256 "c1767c2572873f016b5d9c6835fff344ba882e34e1b835d3fa13b5715f67db43"
  end

  def install
    bin.install "dtlv"
  end

  test do
    assert_equal "10\n",
      pipe_output("#{bin}/dtlv exec '(+ 1 2 3 4)'")
  end
end
