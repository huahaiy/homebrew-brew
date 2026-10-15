class Datalevin < Formula
  desc "Simple, fast and versatile Datalog database"
  homepage "https://github.com/datalevin/datalevin"
  version "1.2.5"
  license "EPL-1.0"

  if OS.linux?
    url "https://github.com/datalevin/datalevin/releases/download/1.2.5/dtlv-1.2.5-ubuntu-22.04-amd64.zip"
    sha256 "211cd93ed6293587d67d2923afd1d968deb75a98bbdac8725f5cccbaf7e797c1"
  else
    url "https://github.com/datalevin/datalevin/releases/download/1.2.5/dtlv-1.2.5-macos-14-aarch64.zip"
    sha256 "d5012688e3b31f34690bc1ff96cacc9ef4d64f495cdbbf9f9984c898032ae53d"
  end

  def install
    bin.install "dtlv"
  end

  test do
    assert_equal "10\n",
      pipe_output("#{bin}/dtlv exec '(+ 1 2 3 4)'")
  end
end
