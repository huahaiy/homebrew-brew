class Datalevin < Formula
  desc "Simple, fast and versatile Datalog database"
  homepage "https://github.com/datalevin/datalevin"
  version "0.10.7"
  license "EPL-1.0"

  if OS.linux?
    url "https://github.com/datalevin/datalevin/releases/download/0.10.7/dtlv-0.10.7-ubuntu-22.04-amd64.zip"
    sha256 "ed7c1d3a1cc7cf4c6ab89b5e1b227436988dabbf98f0c9bec8ae3cbb4919b085"
  else
    url "https://github.com/datalevin/datalevin/releases/download/0.10.7/dtlv-0.10.7-macos-14-aarch64.zip"
    sha256 "c6089e2bd8842ef89fa1808a8f9064c4de943fff08e505e88a7ce6b10e132a0a"
  end

  def install
    bin.install "dtlv"
  end

  test do
    assert_equal "10\n",
      pipe_output("#{bin}/dtlv exec '(+ 1 2 3 4)'")
  end
end
