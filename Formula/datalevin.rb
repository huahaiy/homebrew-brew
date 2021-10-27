class Datalevin < Formula
  desc "Simple, fast and versatile Datalog database"
  homepage "https://github.com/juji-io/datalevin"
  version "0.5.26"
  license "EPL-1.0"

  if OS.linux?
    url "https://github.com/juji-io/datalevin/releases/download/0.5.26/dtlv-0.5.26-ubuntu-latest-amd64.zip"
    sha256 "efff19f0d806d84dd644bd6d6bd4eb99bd6df0bf9f69efeaac6c0cb3034f5e06"
  else
    url "https://github.com/juji-io/datalevin/releases/download/0.5.26/dtlv-0.5.26-macos-latest-amd64.zip"
    sha256 "6e51f06978460bf027bda04275b7696288ff2d8b4ec7e6cc11fccd2aba587821"
  end

  def install
    bin.install "dtlv"
  end

  test do
    assert_equal "10\n",
      pipe_output("#{bin}/dtlv exec '(+ 1 2 3 4)'")
  end
end
