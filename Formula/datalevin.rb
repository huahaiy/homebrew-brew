class Datalevin < Formula
  desc "Simple, fast and versatile Datalog database"
  homepage "https://github.com/juji-io/datalevin"
  version "0.9.22"
  license "EPL-1.0"

  if OS.linux?
    url "https://github.com/juji-io/datalevin/releases/download/0.9.22/dtlv-0.9.22-ubuntu-22.04-amd64.zip"
    sha256 "c9c9f3d1ecadb8d4066248079093be527daa346f874dad288ce7112bbc584772"
  else
    if Hardware::CPU.arm?
      url "https://github.com/juji-io/datalevin/releases/download/0.9.22/dtlv-0.9.22-macos-latest-aarch64.zip"
      sha256 "3c45f7e9663e2ee8b105eeb6b1e3602b977b04261dab3f426537f8d3e2936252"
    else
      url "https://github.com/juji-io/datalevin/releases/download/0.9.22/dtlv-0.9.22-macos-13-amd64.zip"
      sha256 "56309bcb3d001809a3a137ab3bc5ffab22388387b523a3612d1fa508d19131b4"
    end
  end

  def install
    bin.install "dtlv"
  end

  test do
    assert_equal "10\n",
      pipe_output("#{bin}/dtlv exec '(+ 1 2 3 4)'")
  end
end
