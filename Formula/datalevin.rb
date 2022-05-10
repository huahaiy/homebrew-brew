class Datalevin < Formula
  desc "Simple, fast and versatile Datalog database"
  homepage "https://github.com/juji-io/datalevin"
  version "0.6.9"
  license "EPL-1.0"

  if OS.linux?
    url "https://github.com/juji-io/datalevin/releases/download/0.6.9/dtlv-0.6.9-ubuntu-latest-amd64.zip"
    sha256 "4401adaed85be89a9d0905f7bdfad4ac9cc471282e6f98ca39f813c79f9a946d"
  else
    url "https://github.com/juji-io/datalevin/releases/download/0.6.9/dtlv-0.6.9-macos-latest-amd64.zip"
    sha256 "d6722fe67f0eca984d2ef8881c96514e55831928b9f64c3c288e785556b68f73"
  end

  def install
    bin.install "dtlv"
  end

  test do
    assert_equal "10\n",
      pipe_output("#{bin}/dtlv exec '(+ 1 2 3 4)'")
  end
end
