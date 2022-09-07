class Datalevin < Formula
  desc "Simple, fast and versatile Datalog database"
  homepage "https://github.com/juji-io/datalevin"
  version "0.6.17"
  license "EPL-1.0"

  if OS.linux?
    url "https://github.com/juji-io/datalevin/releases/download/0.6.17/dtlv-0.6.17-ubuntu-latest-amd64.zip"
    sha256 "efba5347eb349c14ec64b8ebd9b51ccd1eb6a08b1dbe93ec9e5c529c522d0371"
  else
    url "https://github.com/juji-io/datalevin/releases/download/0.6.17/dtlv-0.6.17-macos-latest-amd64.zip"
    sha256 "b13aa935ba6ac0a5a76b30bc900ecedaf620cb0da86ecff5757797a10cd751c7"
  end

  def install
    bin.install "dtlv"
  end

  test do
    assert_equal "10\n",
      pipe_output("#{bin}/dtlv exec '(+ 1 2 3 4)'")
  end
end
