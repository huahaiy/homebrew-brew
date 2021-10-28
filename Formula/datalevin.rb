class Datalevin < Formula
  desc "Simple, fast and versatile Datalog database"
  homepage "https://github.com/juji-io/datalevin"
  version "0.5.27"
  license "EPL-1.0"

  bottle :unneeded

  if OS.linux?
    url "https://github.com/juji-io/datalevin/releases/download/0.5.27/dtlv-0.5.27-ubuntu-latest-amd64.zip"
    sha256 "3725deb862b3e4490cba833367f2ea42d3de2b578867c02f6d9c102fdd6671f1"
  else
    url "https://github.com/juji-io/datalevin/releases/download/0.5.27/dtlv-0.5.27-macos-latest-amd64.zip"
    sha256 ""
  end

  def install
    bin.install "dtlv"
  end

  test do
    assert_equal "10\n",
      pipe_output("#{bin}/dtlv exec '(+ 1 2 3 4)'")
  end
end
