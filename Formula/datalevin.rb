class Datalevin < Formula
  desc "Simple, fast and versatile Datalog database"
  homepage "https://github.com/juji-io/datalevin"
  version "0.6.7"
  license "EPL-1.0"

  if OS.linux?
    url "https://github.com/juji-io/datalevin/releases/download/0.6.7/dtlv-0.6.7-ubuntu-latest-amd64.zip"
    sha256 "8f2e3ab424e110c6bd49a39e4fdc70a168d340e17a1d0fe03f4ad4390fe8100e"
  else
    url "https://github.com/juji-io/datalevin/releases/download/0.6.7/dtlv-0.6.7-macos-latest-amd64.zip"
    sha256 "71bf4c6c214dc730c51bb9bc6c48c5faa28c769fea9b9ce8c1cd5440cedca337"
  end

  def install
    bin.install "dtlv"
  end

  test do
    assert_equal "10\n",
      pipe_output("#{bin}/dtlv exec '(+ 1 2 3 4)'")
  end
end
