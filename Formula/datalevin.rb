class Datalevin < Formula
  desc "Simple, fast and versatile Datalog database"
  homepage "https://github.com/datalevin/datalevin"
  version "0.10.3"
  license "EPL-1.0"

  if OS.linux?
    url "https://github.com/datalevin/datalevin/releases/download/0.10.3/dtlv-0.10.3-ubuntu-22.04-amd64.zip"
    sha256 "6585f933f653b789d36ce0f175ae7fb43f488ceb16f9f6329491b00c0a173cd6"
  else
    url "https://github.com/datalevin/datalevin/releases/download/0.10.3/dtlv-0.10.3-macos-14-aarch64.zip"
    sha256 "9ca3f9bfdcee342cc6998c0a34497ae578fa6c60be609d2423351c9a1cdf8f14"
  end

  def install
    bin.install "dtlv"
  end

  test do
    assert_equal "10\n",
      pipe_output("#{bin}/dtlv exec '(+ 1 2 3 4)'")
  end
end
