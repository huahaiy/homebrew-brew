class Datalevin < Formula
  desc "Simple, fast and versatile Datalog database"
  homepage "https://github.com/juji-io/datalevin"
  version "0.5.30"
  license "EPL-1.0"

  if OS.linux?
    url "https://github.com/juji-io/datalevin/releases/download/0.5.30/dtlv-0.5.30-ubuntu-latest-amd64.zip"
    sha256 "f3df148c03ca7f4d2b05fc858db0ab29c4e4b47ddf9352f807094d211c3d4174"
  else
    url "https://github.com/juji-io/datalevin/releases/download/0.5.30/dtlv-0.5.30-macos-latest-amd64.zip"
    sha256 "63d5ec555036068aeac2148f5aae02240e97c90c55c9bb7956e6ccd592731e3d"
  end

  def install
    bin.install "dtlv"
  end

  test do
    assert_equal "10\n",
      pipe_output("#{bin}/dtlv exec '(+ 1 2 3 4)'")
  end
end
