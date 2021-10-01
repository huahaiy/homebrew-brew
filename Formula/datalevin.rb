class Datalevin < Formula
  desc "Simple, fast and versatile Datalog database"
  homepage "https://github.com/juji-io/datalevin"
  version "0.5.22"
  license "EPL-1.0"

  bottle :unneeded

  if OS.linux?
    url "https://github.com/juji-io/datalevin/releases/download/0.5.22/dtlv-0.5.22-ubuntu-latest-amd64.zip"
    sha256 "b473f3190f972f1da70bfacea57f50083bbc0624994edfc7aebb4caba560a964"
  else
    url "https://github.com/juji-io/datalevin/releases/download/0.5.22/dtlv-0.5.22-macos-latest-amd64.zip"
    sha256 "30c7cc7e44e1b75c7fcbc5ff444d610dbb07b4f55c28546f135ddcd6fbaa34ce"
  end

  def install
    bin.install "dtlv"
  end

  test do
    assert_equal "10\n",
      pipe_output("#{bin}/dtlv exec '(+ 1 2 3 4)'")
  end
end
