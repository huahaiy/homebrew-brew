class Datalevin < Formula
  desc "Simple, fast and versatile Datalog database"
  homepage "https://github.com/juji-io/datalevin"
  version "0.5.15"
  license "EPL-1.0"

  bottle :unneeded

  if OS.linux?
    url "https://github.com/juji-io/datalevin/releases/download/0.5.15/dtlv-0.5.15-ubuntu-latest-amd64.zip"
    sha256 "44834d9c0fce0166d15aa6632d863c27a1a60295ea708137f294f05bee7378b2"
  else
    url "https://github.com/juji-io/datalevin/releases/download/0.5.15/dtlv-0.5.15-macos-latest-amd64.zip"
    sha256 "9ec858dfbb6ca39d5865ad9d9f7d7bef9952f48f49a2f7425bf043f55ac17e2e"
  end

  def install
    bin.install "dtlv"
  end

  test do
    assert_equal "10\n",
      pipe_output("#{bin}/dtlv exec '(+ 1 2 3 4)'")
  end
end
