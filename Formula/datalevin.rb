class Datalevin < Formula
  desc "Simple, fast and versatile Datalog database"
  homepage "https://github.com/juji-io/datalevin"
  version "0.6.3"
  license "EPL-1.0"

  if OS.linux?
    url "https://github.com/juji-io/datalevin/releases/download/0.6.3/dtlv-0.6.3-ubuntu-latest-amd64.zip"
    sha256 "a98a145ee847c5972437aecd45c68fd94fda008afdc281deb380b316b4e5a1e5"
  else
    url "https://github.com/juji-io/datalevin/releases/download/0.6.3/dtlv-0.6.3-macos-latest-amd64.zip"
    sha256 "220cc2db4630d2832ee4ea45542d37e877a589366d27d42c5bc5f0976f7ab6c8"
  end

  def install
    bin.install "dtlv"
  end

  test do
    assert_equal "10\n",
      pipe_output("#{bin}/dtlv exec '(+ 1 2 3 4)'")
  end
end
