class Datalevin < Formula
  desc "Simple, fast and versatile Datalog database"
  homepage "https://github.com/datalevin/datalevin"
  version "1.2.8"
  license "EPL-1.0"

  if OS.linux?
    url "https://github.com/datalevin/datalevin/releases/download/1.2.8/dtlv-1.2.8-ubuntu-22.04-amd64.zip"
    sha256 "1c10c350d1478691887d5d113d821298c2e206afdfe0675cc238eea82ed80f7c"
  else
    url "https://github.com/datalevin/datalevin/releases/download/1.2.8/dtlv-1.2.8-macos-14-aarch64.zip"
    sha256 "11c8570beff101682253cd5380dcd555f026cdfff75c2c05873ca7355b06d109"
  end

  def install
    bin.install "dtlv"
  end

  test do
    assert_equal "10\n",
      pipe_output("#{bin}/dtlv exec '(+ 1 2 3 4)'")
  end
end
