class Datalevin < Formula
  desc "Simple, fast and versatile Datalog database"
  homepage "https://github.com/juji-io/datalevin"
  version "0.6.19"
  license "EPL-1.0"

  if OS.linux?
    url "https://github.com/juji-io/datalevin/releases/download/0.6.19/dtlv-0.6.19-ubuntu-latest-amd64.zip"
    sha256 "4faa93446dd41a77eea322cfd65fe13c6fb9b5385c527458b9e958f8fe991dd9"
  else
    url "https://github.com/juji-io/datalevin/releases/download/0.6.19/dtlv-0.6.19-macos-latest-amd64.zip"
    sha256 "02d408df03b56e925066eda297aa5807eb5011a6a38c6db458696e1786181a8a"
  end

  def install
    bin.install "dtlv"
  end

  test do
    assert_equal "10\n",
      pipe_output("#{bin}/dtlv exec '(+ 1 2 3 4)'")
  end
end
