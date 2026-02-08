class Datalevin < Formula
  desc "Simple, fast and versatile Datalog database"
  homepage "https://github.com/datalevin/datalevin"
  version "0.10.5"
  license "EPL-1.0"

  if OS.linux?
    url "https://github.com/datalevin/datalevin/releases/download/0.10.5/dtlv-0.10.5-ubuntu-22.04-amd64.zip"
    sha256 "fb002bd3775124aa890941be29e61e87f05cc92ecc70e36e524dbe366a9bf1e4"
  else
    url "https://github.com/datalevin/datalevin/releases/download/0.10.5/dtlv-0.10.5-macos-14-aarch64.zip"
    sha256 "540d1198378ed10b61a724cd184ef700d01aa909f93212966357e6f8f1197460"
  end

  def install
    bin.install "dtlv"
  end

  test do
    assert_equal "10\n",
      pipe_output("#{bin}/dtlv exec '(+ 1 2 3 4)'")
  end
end
